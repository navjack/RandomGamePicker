# RandomGamePicker

## What the heck is this?

Today's exercise in overcomplicated but useful for me things is this thing that picks a random game for you. I just selected all the games in my folders and pasted that into visual studio code. That gives you a list of all the names. After that I just manually cleaned up the data a little bit. After that I used a thing in python that uses zlib to compress the "databases" which are just text files. Then I figured out how to load those compressed versions after verifying that they decompress back to the same original file, which they do save for an extra linebreak at the end which is fine. So basically I just made a complicated thing that could have just read normal text files to pick a random item in a list.

## How do I use this?

[First you need to download this and extract it to a folder!](https://github.com/navjack/RandomGamePicker/releases/tag/AmigaAdded)

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
Pick a system: 18

Cool Croc Twins, The (1992)


Thank you for using the random game picker!
```

## Changelog

### LATEST CHANGES

* I figure with the Amiga A500 Mini that people will be downloading large Amiga computer game ROM sets and have no idea where to start in that large folder filled with ADF files so I decided to add my collection of Amiga computer games to a database to use for random selection
