/* Hannes256 GAL Equations
 * Copyright 2022 SukkoPera <software@sukkology.net>
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
 * Notes:
 * - Before you activate the expansion you should initialize this control register. You can't read this register.
 * - After switch-on the plus/4 all bits are "1". The standard bank is bank 3.
 * - Bank 3 is always in the nonswitchable area.
 *
 * This GAL implements all the glue logic shown in the schematics by Solder/Synergy, *except* the 6529B implementing the
 * control register. Since that IC is not easy to find these days, we'll find an alternative, probably involving a
 * 74HCT273.
 */

/** Pin Definitions **/

/* RAM Register /CS (replace HCT138)
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
Pin 23 = rw;				// R/W: Since our "register" cannot be read, let's enable it only on writes
Pin 21 = userport_cs;		// OUTPUT: $FD10 back to Userport 6529 (U5 pin 19, +4 only)
Pin 22 = ram_cs;			// OUTPUT: $FD16 = /CS for RAM Register (Additional MOS 6529 on U5)

/* MA8 Generation (replace LS02, HCT02 and HCT257)
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

// Free pins: 18, 19, 23


/** Declarations and Intermediate Variable Definitions **/
FIELD addr = [a15..0];
FIELD ram_slot = [p1..0];

/** Logic Equations **/

// RAM Register
!userport_cs = !userport_range & addr:xxx0;
!ram_cs = !rw & !userport_range & addr:xxx6;		// R/W low => Writing

// MA8 Generation
switchable_range = (!p7 & addr:[1000..FFFF]) # (p7 & addr:[4000..FFFF]);
lo = ram_slot:'b'x0 & switchable_range;
hi = ram_slot:'b'0x & switchable_range;
ma8 = (aec # p6) & ((!mux & lo) # (mux & hi));

// MA8 Generation
//t1 = !(a14 # a15);
//t2 = !(a12 # a13);
//t3 = !(p6 # aec);
//t4 = !(t1 # t3);
//t4b = !(t2 # t3 # p7);
//t5 = !(t4 # t4b);
//t6 = !(p0 # t5);
//t7 = !(p1 # t5);
//ma8 = (!mux & t6) # (mux & t7);
