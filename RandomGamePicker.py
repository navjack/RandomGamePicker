#!/usr/bin/env python3

# Random Game Picker.

import zlib
import random
import sys
import json

# Color codes.
RED             = "\033[31m"
#DARK_RED        = "\033[31;1m"
#GREEN           = "\033[32m"
#DARK_GREEN      = "\033[32;1m"
YELLOW          = "\033[33m"
#DARK_YELLOW     = "\033[33;1m"
#BLUE            = "\033[34m"
#DARK_BLUE       = "\033[34;1m"
#MAGENTA         = "\033[35m"
#DARK_MAGENTA    = "\033[35;1m"
CYAN            = "\033[36m"
#DARK_CYAN       = "\033[36;1m"
#WHITE           = "\033[37m"
#DARK_WHITE      = "\033[37;1m"
#BLACK           = "\033[30m"

# End color code.
COLOR           = "\033[0m"

# Games databases.
GAMEGEARDB      = "/Volumes/ext/games-picker/game gear.txt"
GAMEBOYDB       = "/Volumes/ext/games-picker/gameboy.txt"
NESDB           = "/Volumes/ext/games-picker/nes.txt"
PS1DB           = "/Volumes/ext/games-picker/ps1.txt"
SNESDB          = "/Volumes/ext/games-picker/snes.txt"
N64DB           = "/Volumes/ext/games-picker/n64.txt"
GBADB           = "/Volumes/ext/games-picker/gba.txt"
GENDB           = "/Volumes/ext/games-picker/gen.txt"
SMSDB           = "/Volumes/ext/games-picker/sms.txt"
VBDB            = "/Volumes/ext/games-picker/vb.txt"
SM3DB           = "/Volumes/ext/games-picker/sm3.txt"
WSDB            = "/Volumes/ext/games-picker/ws.txt"
S32XDB          = "/Volumes/ext/games-picker/32x.txt"
TG16DB          = "/Volumes/ext/games-picker/tg16.txt"
TCDDB           = "/Volumes/ext/games-picker/tcd.txt"
NGPDB           = "/Volumes/ext/games-picker/neogeopocket.txt"
FDSDB           = "/Volumes/ext/games-picker/fds.txt"

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
    with open(GENDB, mode='r', encoding='utf8') as file:
        lines = file.read().splitlines()
        random.choice(lines)
        print(YELLOW)
        print(random.choice(lines))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 9, pick a random line in SMSDB and print it.
elif userpick == "9":
    with open(SMSDB, mode='r', encoding='utf8') as file:
        lines = file.read().splitlines()
        random.choice(lines)
        print(YELLOW)
        print(random.choice(lines))
        print(COLOR)
        print(CYAN)
        print("Thank you for using the random game picker!")
        print(COLOR)

# If the user picks 10, pick a random line in VBDB and print it.
elif userpick == "10":
    with open(VBDB, mode='r', encoding='utf8') as file:
        lines = file.read().splitlines()
        random.choice(lines)
        print(YELLOW)
        print(random.choice(lines))
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

# If the user enters an invalid string, print an error message.
else:
    print(RED)
    print("Please pick a listed system.")
    print(COLOR)
