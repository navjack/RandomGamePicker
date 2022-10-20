# RandomGamePicker

## What the heck is this?

Today's exercise in overcomplicated but useful for me things is this thing that picks a random game for you. I just selected all the games in my folders and pasted that into visual studio code. That gives you a list of all the names. After that I just manually cleaned up the data a little bit. After that I used a thing in python that uses zlib to compress the "databases" which are just text files. Then I figured out how to load those compressed versions after verifying that they decompress back to the same original file, which they do save for an extra linebreak at the end which is fine. So basically I just made a complicated thing that could have just read normal text files to pick a random item in a list.

Now, a big reason for the ZLIB'ing of the text file databases is to prevent web scraping in the simplest way. I don't feel like having a GitHub repo just filled with names of video games and computer games in plain text. With that mentioned I will not be providing the games listed. I will not be providing information on how to acquire the games either. I will mention that Archive dot ORG is an AMAZING resource.

* The Old School Emulation Center
* REDUMP
* NO-INTRO

These are a few useful keywords to know. Jdownloader2 is a useful tool also.

## How do I use this?

[First you need to download this and extract it to a folder!](https://github.com/navjack/RandomGamePicker/releases/tag/SemiFinalPowerShell)

If you have Python 3 installed then you can just run this in your terminal or command line of choice.

```
jackmangano@Jacks-Mac-mini games-picker % python3 RandomGamePicker.py
 1. Game Gear
 2. Game Boy
 3. NES
 4. PS1
 5. SNES
 6. N64
 7. GBA
 8. Genesis
 9. Sega Master System
10. Virtual Boy
11. Sega Mark III
12. WonderSwan
13. Sega 32x
14. TurboGrafx-16
15. TurboGrafx CD
16. NeoGeo Pocket
17. Famicom Disk System
18. Amiga
19. MSX
20. Dreamcast
21. PC-98
Pick a system: 18

Cool Croc Twins, The (1992)


Thank you for using the random game picker!
```

## Changelog

### LATEST CHANGES

* Added Dreamcast and PC-98. Need to go through the PC-98 one and prune more entries but this should suffice for now.

## Included systems and their line/game count

```
Sega 32X                    - 208
Commodore Amiga             - 3647
Famicom Disk System         - 343
Sega Game Gear              - 799
Nintendo Game Boy & Color   - 3344
Nintendo Game Boy Advance   - 1112
Sega Genesis                - 2763
Nintendo 64                 - 402
Neo Geo Pocket & Color      - 128
Nintendo NES                - 3848
Sony Playstation 1          - 1127
Sega Mark III               - 243
Sega Master System          - 391
Nintendo SNES               - 3841
TurboGrafx-CD               - 27
TurboGrafx-16               - 432
Virtual Boy                 - 31
WonderSwan                  - 77
MSX                         - 1329
Dreamcast                   - 265
PC-98                       - 5849
```
