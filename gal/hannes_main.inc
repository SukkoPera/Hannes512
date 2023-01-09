/* Hannes256 GAL Equations
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

/* This implements almost all the logic required by the 256 kB RAM Expansion for the Commodore 16/Plus 4 designed by
 * Hannes, as drawn in the schematics by Solder/Synergy.
 *
 * The memory of 256kB is divided in 4 64kB banks. You can only use 240kB, because you can't switch memory lower than
 * $1000. A further restriction is possible if you use bit 7. The control register for the expansion is located at
 * address $FD16 (64790):
 *
 * - Bit 0/1: Select RAM-bank (0-3), standard is RAM-bank 3
 * - Bit 4/5: Leave these set to 1 for compatibility with the expansion by CSORY
 * - Bit 6: "TED-feature", added in "Update 1":
 *   - 1: Allows TED access to RAM (for text, graphic) to RAM-bank selected with bits 0 and 1
 *   - 0: TED access to RAM only in bank 3, bits 0 and 1 ignored
 * - Bit 7: Set the switch-bound:
 *   - 0: >$0fff
 *   - 1: >$3fff
 *
 * Note:
 * - At power-on the plus/4 all bits are "1". The standard bank is bank 3.
 *
 * This GAL implements all the glue logic shown in the schematics by Solder/Synergy, *except* the 6529B implementing the
 * control register. Since that IC is not easy to find these days, we use an alternative circuit involving a 74x573 for
 * the write part (a 74x273 could be used too, but the '573 simplified our routing), a 74x245 for the readback part,
 * some pull-up resistors and a NE555 to implement the "outputs-high-on-reset" feature of the 6529 (a 74x74 or any other
 * D-type flip-flop could replace the '555, but I didn't want to have a partially-used IC and I had a ton of '555 lying
 * around). It could be objected that this alternative circuit is a bit overkill as the expansion only uses p0/1/6/7,
 * but a lot of the software already available which supports this expansion seems to read/write the whole 8 bits of the
 * register in their expansion-detecting algorithms, so better play safe. V1 of the expansion only implemented those 4
 * bits though, and all the software I tested still appeared to work correctly. If you are writing a new detection
 * algorithm, I'd recommend to only use p0/1/6/7.
 * 
 * Thanks to Levente Harsfalvi (TLC) for suggesting this replacement circuit for the 6529.
 */

/** Pin Definitions **/

/* RAM Register /CS (handled by HCT138 in the original Hannes/Solder schematics)
 * The idea is to intercept the Userport /CS range ($FD10-FD1F, PLA pin 16) and further decode it, feeding $FD10 to its
 * original purpose and using the remaining addresses for other stuff. In particular, $FD16 will be the control register
 * for our RAM expansion (see ioarea.txt for further address assignments).
 * Note: the Userport /CS range is also known as "Cassette" on the C16 schematics, as it actually has no Userport.
 * Note2: On the +4, the track between pin 16 of the PLA (U19) and pin 19 of the 6529 controlling the Userport (U5)
 *        must be cut and the two sides must be connected to the corresponding pins below.
 */
Pin 1 = a0;
Pin 2 = a1;
Pin 3 = a2;
Pin 4 = a3;
Pin 5 = userport_range;		// $FD1x (C16: U16/+4: U19 pin 16)
Pin 23 = rw;				// R/W: Since we emulate the MOS 6529 used in the original project with several chips, we'll
                            // need to enable one or the other according to whether a read or a write is in progress
Pin 21 = userport_cs;		// OUTPUT: $FD10 back to Userport 6529 (C16: U11 pin 10/+4: U5 pin 19)
Pin 19 = ramreg_rcs;		// OUTPUT: $FD16 = /CS for RAM Register Read (U4, 74x245)
Pin 18 = ramreg_wcs;		// OUTPUT: $FD16 = CS for RAM Register Write (U3, 74x573)
Pin 22 = ff_trigger;		// OUTPUT: Enables U3 through U15 at the first write of the RAM register, this is used to
                            // fake the "high-on-reset" outputs, by keeping U3 disabled until it is written to and
                            // pulling p0..7 high through RN1/2

/* MA8 Generation (handled by the LS02, HCT02 and HCT257 in the original Hannes/Solder schematics)
 * P0/P1: Select RAM-bank (0-3), standard is RAM-bank 3
 * P6: 0: TED always accesses RAM bank 3, 1 = TED accesses selected RAM-bank
 * P7: Switch-bound: 0 = >$0fff, 1 = >$3fff
 */
Pin 6 = a12;
Pin 7 = a13;
Pin 8 = a14;
Pin 9 = a15;
Pin 10 = mux;
Pin 11 = p0;					// P0 from RAM Register
Pin 13 = p1;					// P1 from RAM Register
Pin 14 = p6;					// P6 from RAM Register
Pin 15 = p7;					// P7 from RAM Register
Pin 16 = aec;					// Low when TED accesses bus
Pin 17 = switchable_range;		// Intermediate signal to workaround GAL limitations, leave unconnected
Pin 20 = ma8;					// OUTPUT: Multiplexed A8 for 256k RAM's additional address line


/** Declarations and Intermediate Variable Definitions **/
FIELD addr = [a15..0];
FIELD ram_slot = [p1..0];

/** Logic Equations **/

// RAM Register
!userport_cs = !userport_range & addr:xxx0;			// Keep the internal userport accessible at $FD10
!ramreg_rcs = rw & !userport_range & addr:xxx6;		// R/W high => Reading
ramreg_wcs = !rw & !userport_range & addr:xxx6;		// R/W low => Writing. Note that this is active-high, as the 74x573
                                                    // is transparent when pin 11 is low and latches the last value when
                                                    // it goes high
!ff_trigger = !rw & !userport_range & addr:xxx6;	// The first falling edge on this will lock the output of U15 to a
                                                    // low level, enabling U3; further transitions have no effect, so
                                                    // this can basically be the opposite of ramreg_wcs

// MA8 Generation
switchable_range = (!p7 & addr:[1000..FFFF]) # (p7 & addr:[4000..FFFF]);
lo = ram_slot:'b'x0 & switchable_range;
hi = ram_slot:'b'0x & switchable_range;
ma8 = (aec # p6) & ((!mux & lo) # (mux & hi));
