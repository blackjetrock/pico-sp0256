# Rp2040 Emulation of the SP0256-AL2 IC

Despite the name, this projects does not use the RP Pico. It is a PCB that has the footprint of the 28pin SP0256-AL2 IC. It plugs in to the same footprint as the IC and performs the functions that the IC does. Well, some of them:

1) Has allophones of the SP0256-AL2 as audio samples
2) Responds to the ALD signal falliung edge, latches the allophone nyumber and plays it.
3) Drives the LRQ line

It does not:
1) Handle an external ROM
2) Handle the play allohone on address line going to 1 mode.
   
This version of the code and PCB is designed to replace an SP0256-AL2 based psion organiser II speech adapter. It will need testing and adjusting in other uses.
It should be treated as a work in progress.

   
