# Hannes512
Hannes512 is an Open Hardware internal 512 kB RAM Expansion board for the Commodore 16.

![Board](https://raw.githubusercontent.com/SukkoPera/Hannes512/master/img/render-top.png)

## Summary
While making [Hannes256](https://github.com/SukkoPera/Hannes256) two shortcomings became apparent:
* The RAM chips needed to be recovered from old equipment or bought second-hand
* The power draw was probably pretty significant (although I never measured it)

It was pretty obvious that switching to a modern SRAM would alleviate both issues, so I went looking for modern chips I could use and the Alliance AS6C4008 turned out to be a perfect match. Besides, it is 512 kB so I even went beyond the original goals and made all of that available to the C16 (even though that can create incompatibilities, see below).

## Design and Assembly Notes
This board is basically a variant of [Hannes256](https://github.com/SukkoPera/Hannes256#design-and-assembly-notes), so most of what you can read on that page also applies to this board.

One exception is that I reintroduced the ESD protection diodes for the TED that were featured in [Fixteen](https://github.com/SukkoPera/Fixteen). They are U8 and U9 and they are optional.

### RAM Compatibility
Both AS6C4008-55PCN and -55PIN have been tested and work fine. I don't know about any other chips, but it's possible that other SRAMs will work.

AS6C4008 chips can either be bought new from electronic distributors or (probably-) used from AliExpress. I have bought a few of the latter and they were all working correctly.

## Installation
See [Hannes256](https://github.com/SukkoPera/Hannes256#installation).

## Technical Notes
While the mechanism originally devised by Hannes/Solder for 256 kB memory expansion can easily be extended to 512 kB and even 1 MB expansions, it requires that software programmers behave correctly and consider the *default bank* to be bank 15. Unfortunately, some of the software requiring 256 kB that already exists was written with the assumption that no expansion larger than 256 kB would ever surface and sets bits 2/3 of the expansion control register to 0 when wanting to switch to the default bank.

This problem affects [Dream World](img/dreamworld_fd16_startup.png) and even the modern-era [Lykia](img/lykia_fd16_startup.png), for instance. The only real solution is to patch the software, but until someone does that, another option is to just limit memory expansions to 256 kB. After all, there is no software (... yet!) that needs more than that, so it currently looks like an acceptable compromise.

The great news is that this is rather easy to do in Hannes512, you just need to program the GAL with a different file. The [gal directory](gal/) contains a number of different JED files:
* Hannes512_GAL20.jed, Hannes512_GAL22.jed: These files provide the full 512 kB.
* Hanns512_G20256.jed, Hanns512_G22256.jed: These files are limited to 256 kB and are the recommended ones to be used at the time being.
* Hanns512_G20H37.jed, Hanns512_G22H37.jed: These files feature a hack that tries to provide more than 256 kB of memory while making banks 3 and 7 the same bank; it's a temporary hack I made mainly for myself, so please disregard it.

## Testing
See [Hannes256](https://github.com/SukkoPera/Hannes256#testing).

## Programming
See [Hannes256](https://github.com/SukkoPera/Hannes256#programming), but keep in mind what is said in the *Technical Notes* above.

## Releases
If you want to get this board produced, you are recommended to get [the latest release](https://github.com/SukkoPera/Hannes512/releases) rather than the current git version, as the latter might be under development and is not guaranteed to be working.

Every release is accompanied by its Bill Of Materials (BOM) file and any relevant notes about it, which you are recommended to read carefully.

## License
The Hannes512 documentation, including the design itself, is copyright &copy; SukkoPera 2022-2023 and is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/).

This documentation is distributed *as is* and WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES whatsoever with respect to its functionality, operability or use, including, without limitation, any implied warranties OF MERCHANTABILITY, SATISFACTORY QUALITY, FITNESS FOR A PARTICULAR PURPOSE or infringement. We expressly disclaim any liability whatsoever for any direct, indirect, consequential, incidental or special damages, including, without limitation, lost revenues, lost profits, losses resulting from business interruption or loss of data, regardless of the form of action or legal theory under which the liability may be asserted, even if advised of the possibility or likelihood of such damages.

## Support the Project
If you want to get some boards manufactured, you can get them from PCBWay through this link:

[![PCB from PCBWay](https://www.pcbway.com/project/img/images/frompcbway.png)](https://www.pcbway.com/project/shareproject/Hannes512_256_kB_RAM_Expansion_for_the_Commodore_16_4_b94217cd.html)

You get my gratitude and cheap, professionally-made and good quality PCBs, I get some credit that will help with this and [other projects](https://www.pcbway.com/project/member/?bmbno=72D33927-5EF6-42). You won't even have to worry about the various PCB options, it's all pre-configured for you!

Also, if you still have to register, [you can use this link](https://www.pcbway.com/setinvite.aspx?inviteid=41100) to get some bonus initial credit (and yield me some more).

You can also buy me a coffee if you want:

<a href='https://ko-fi.com/L3L0U18L' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://az743702.vo.msecnd.net/cdn/kofi2.png?v=2' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>

## Thanks
* Hannes and Solder for the original design and documentation.
* Levente Hársfalvi (TLC) for plenty of help, in particular with the MOS 6529 replacement circuit.
* siz for the memory test utility.
* Alit Design for the [Crotah font](https://www.fontspace.com/crotah-font-f86873) used for the logo.
