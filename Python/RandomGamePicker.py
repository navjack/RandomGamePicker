#!/usr/bin/env python3
# pylint: disable=missing-module-docstring

# NavJack's Random Game Picker.

import zlib
import random
import sys
import json

# Color codes.
RED             = "\033[31m"
YELLOW          = "\033[33m"
CYAN            = "\033[36m"

# End color code.
COLOR           = "\033[0m"

# Games databases.
GAMEGEARDB      = "game gear.txt"
GAMEBOYDB       = "gameboy.txt"
NESDB           = "nes.txt"
PS1DB           = "ps1.txt"
SNESDB          = "snes.txt"
N64DB           = "n64.txt"
GBADB           = "gba.txt"
GENDB           = "gen.txt"
SMSDB           = "sms.txt"
VBDB            = "vb.txt"
SM3DB           = "sm3.txt"
WSDB            = "ws.txt"
S32XDB          = "32x.txt"
TG16DB          = "tg16.txt"
TCDDB           = "tcd.txt"
NGPDB           = "neogeopocket.txt"
FDSDB           = "fds.txt"
AMIDB           = "amiga.txt"
MSXDB           = "msx.txt"
DCDB            = "dreamcast.txt"
PC98DB          = "pc98.txt"

# Menu vars.
MENU1           = " 1. Game Gear"
MENU2           = " 2. Game Boy"
MENU3           = " 3. NES"
MENU4           = " 4. PS1"
MENU5           = " 5. SNES"
MENU6           = " 6. N64"
MENU7           = " 7. GBA"
MENU8           = " 8. Genesis"
MENU9           = " 9. Sega Master System"
MENU10          = "10. Virtual Boy"
MENU11          = "11. Sega Mark III"
MENU12          = "12. WonderSwan"
MENU13          = "13. Sega 32x"
MENU14          = "14. TurboGrafx-16"
MENU15          = "15. TurboGrafx CD"
MENU16          = "16. NeoGeo Pocket"
MENU17          = "17. Famicom Disk System"
MENU18          = "18. Commodore Amiga"
MENU19          = "19. MSX"
MENU20          = "20. Dreamcast"
MENU21          = "21. PC-98"

# Print the variables for the menu.
print(MENU1)
print(MENU2)
print(MENU3)
print(MENU4)
print(MENU5)
print(MENU6)
print(MENU7)
print(MENU8)
print(MENU9)
print(MENU10)
print(MENU11)
print(MENU12)
print(MENU13)
print(MENU14)
print(MENU15)
print(MENU16)
print(MENU17)
print(MENU18)
print(MENU19)
print(MENU20)
print(MENU21)

# Ask the user to pick a system.
userpick = input("Pick a system: ")

# If the user enters nothing quit.
if userpick == "":
    print(CYAN)
    print("Thank you for using the random game picker!")
    print(COLOR)
    sys.exit()

# If the user picks 1, pick a random line in GAMEGEARDB and print it.
elif userpick == "1":
    with open(GAMEGEARDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 2, pick a random line in GAMEBOYDB and print it.
elif userpick == "2":
    with open(GAMEBOYDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 3, pick a random line in NESDB and print it.
elif userpick == "3":
    with open(NESDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 4, pick a random line in PS1DB and print it.
elif userpick == "4":
    with open(PS1DB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 5, pick a random line in SNESDB and print it.
elif userpick == "5":
    with open(SNESDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 6, pick a random line in N64DB and print it.
elif userpick == "6":
    with open(N64DB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 7, pick a random line in GBADB and print it.
elif userpick == "7":
    with open(GBADB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 8, pick a random line in GENDB and print it.
elif userpick == "8":
    with open(GENDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 9, pick a random line in SMSDB and print it.
elif userpick == "9":
    with open(SMSDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 10, pick a random line in VBDB and print it.
elif userpick == "10":
    with open(VBDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 11, pick a random line in SM3DB and print it.
elif userpick == "11":
    with open(SM3DB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 12, pick a random line in WSDB and print it.
elif userpick == "12":
    with open(WSDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 13, pick a random line in S32XDB and print it.
elif userpick == "13":
    with open(S32XDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 14, pick a random line in TG16DB and print it.
elif userpick == "14":
    with open(TG16DB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 15, pick a random line in TCDDB and print it.
elif userpick == "15":
    with open(TCDDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 16, pick a random line in NGPDB and print it.
elif userpick == "16":
    with open(NGPDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 17, pick a random line in FDSDB and print it.
elif userpick == "17":
    with open(FDSDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 18, pick a random line in AMIDB and print it.
elif userpick == "18":
    with open(AMIDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 19, pick a random line in MSXDB and print it.
elif userpick == "19":
    with open(MSXDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 20, pick a random line in DCDB and print it.
elif userpick == "20":
    with open(DCDB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 21, pick a random line in PC98DB and print it.
elif userpick == "21":
    with open(PC98DB + ".zlib", "rb") as file:
        file = zlib.decompress(file.read())
        file = file.decode("utf-8")
        file = json.loads(file)
        random.choice(file)
        print(YELLOW)
        print(random.choice(file))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user enters an invalid string, print an error message.
else:
    print(RED)
    print("Please pick a listed system.")
    print(COLOR)
