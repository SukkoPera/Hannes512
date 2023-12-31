/* Hannes512 GAL Equations
 * Copyright 2022-2023 SukkoPera <software@sukkology.net>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

/* This implements almost all the logic required by the 512 kB RAM Expansion for the Commodore 16/Plus 4 designed by
 * Hannes, as drawn in the schematics by Solder/Synergy.
 *
 * The memory of 512 kB is divided in 8 64kB banks. You can only use 480 kB, because you can't switch memory lower than
 * $1000. A further restriction is possible if you use bit 7. The control register for the expansion is located at
 * address $FD16 (64790):
 *
 * - Bit 0/1/2: Select RAM-bank (0-7)
 * - Bit 3: Leave at 1
 * - Bit 4/5: Leave these set to 1 for compatibility with the expansion by CSORY
 * - Bit 6: "TED-feature", added in "Update 1":
 *   - 1: Allows TED access to RAM (for text, graphic) to RAM-bank selected with bits 0, 1 and 2
 *   - 0: TED access to RAM only in bank 3, bits 0, 1 and 2 ignored
 * - Bit 7: Set the switch-bound:
 *   - 0: >$0fff
 *   - 1: >$3fff
 *
 * Note:
 * - At power-on the plus/4 all bits are "1".
 *
 * This GAL implements all the glue logic shown in the schematics by Solder/Synergy, *except* the 6529B implementing the
 * control register. Since that IC is not easy to find these days, we use an alternative circuit involving a 74x573 for
 * the write part (a 74x273 could be used too, but the '573 simplified our routing), a 74x245 for the readback part,
 * some pull-up resistors and a NE555 to implement the "outputs-high-on-reset" feature of the 6529 (a 74x74 or any other
 * D-type flip-flop could replace the '555, but I didn't want to have a partially-used IC and I had a ton of '555 lying
 * around).
 * 
 * Thanks to Levente Harsfalvi (TLC) for suggesting this replacement circuit for the 6529.
 */

/** Pin Definitions **/

/* RAM Register /CS (handled by HCT138 in the original Hannes/Solder schematics)
 * The idea is to intercept the Userport /CS range ($FD10-FD1F, PLA pin 16) and further decode it, feeding $FD10 to its
 * original purpose and using the remaining addresses for other stuff. In particular, $FD16 will be the control register
 * for our RAM expansion (see ioarea.txt for further address assignments).
 * Note: the Userport /CS range is also known as "Cassette" on the C16 schematics, as it actually has no Userport.
 * Note 2: PLA pin 16 must be lifted from its socket and NOT make contact with it.
 */
Pin 1 = a1;
Pin 2 = a2;
Pin 3 = a3;
Pin 4 = a0;
Pin 5 = userport_range;		// $FD1x (C16: U16/+4: U19 pin 16), active-low
Pin 23 = rw;				// R/W: Since we emulate the MOS 6529 used in the original project with several chips, we'll
                            // need to enable one or the other according to whether a read or a write is in progress
Pin 22 = userport_cs;		// OUTPUT: $FD10 back to Userport 6529 (C16: U11 pin 10/+4: U5 pin 19)
Pin 21 = ramreg_rcs;		// OUTPUT: $FD16 = /CS for RAM Register Read (U4, 74x245)
Pin 20 = ramreg_wcs;		// OUTPUT: $FD16 = CS for RAM Register Write (U3, 74x573)

/* Extra Address Bits Generation
 * P0/P1/P2: Select RAM-bank (0-7), standard is RAM-bank 7
 * P6: 0: TED always accesses RAM bank 7, 1 = TED accesses selected RAM-bank
 * P7: Switch-bound: 0 = >$0fff, 1 = >$3fff
 */
Pin 6 = a12;
Pin 7 = a13;
Pin 8 = a14;
Pin 9 = a15;
Pin 10 = aec;				// Low when TED accesses bus
Pin 11 = p2;				// P2 from RAM Register
Pin 13 = p1;				// P1 from RAM Register
Pin 14 = p0;				// P0 from RAM Register
Pin 15 = p6;				// P6 from RAM Register
Pin 16 = p7;				// P7 from RAM Register

Pin 19 = a16;				// OUTPUT: A16 extra address bit to SRAM
Pin 18 = a17;				// OUTPUT: A17 extra address bit to SRAM
Pin 17 = a18;				// OUTPUT: A18 extra address bit to SRAM


/** Declarations and Intermediate Variable Definitions **/
FIELD addr = [a15..0];


/** Logic Equations **/

// RAM Register
!userport_cs = !userport_range & addr:xxx0;			// Keep the internal userport accessible at $FD10
!ramreg_rcs = rw & !userport_range & addr:xxx6;		// R/W high => Reading
ramreg_wcs = !rw & !userport_range & addr:xxx6;		// R/W low => Writing. Note that this is active-high, as the 74x573
													// is transparent when pin 11 is low and latches the last value when
													// it goes high

// 512 kB SRAM Extra Address Bits Generation
_switchable_range = (!p7 & addr:[1000..FFFF]) # (p7 & addr:[4000..FFFF]);
a16 = !_switchable_range # (!aec & !p6) # p0;
a17 = !_switchable_range # (!aec & !p6) # p1;

$IFDEF TWOFIVESIX
a18 = 'b'0;
$ELSE
$IFDEF HACK37
/* This is different from the above, since it needs to be LOW when an address outside the switchable range is on the bus
 * and when TED is accessing memory with P6 LOW this way slot 3 will be selected, maintaining compatibility with 256k
 * expansions.
 */
a18 = !_switchable_range # (!aec & !p6) # (p2 # (p1 & p0));
$ELSE
a18 = !_switchable_range # (!aec & !p6) # p2;
$ENDIF
$ENDIF
