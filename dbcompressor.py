#!/usr/bin/env python3

# DB Compressor

import zlib
import json

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

# open GAMEGEARDB and read it into a list and convert that list into JSON and then convert the JSON into a bytes-like object and then use zlib.compress() to compress the bytes-like object and then decompress it using zlib.decompress() and convert the bytes-like object into JSON and then convert that into a python list and display the list.
with open(GAMEGEARDB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)

# save GG_COMPRESSED as GAMEGEARDB + ".zlib"
with open(GAMEGEARDB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

# do the same with the next database file
with open(GAMEBOYDB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(GAMEBOYDB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(NESDB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(NESDB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)
#with open(NESDB + ".list.txt", "wt") as GG_ZLIB:
#    for item in GG_LIST:
#        GG_ZLIB.write(str(item) + "\n")

with open(PS1DB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(PS1DB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(SNESDB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(SNESDB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(N64DB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(N64DB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(GBADB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(GBADB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(GENDB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(GENDB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(SMSDB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(SMSDB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(VBDB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(VBDB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(SM3DB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(SM3DB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(WSDB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(WSDB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(S32XDB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(S32XDB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(TG16DB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(TG16DB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(TCDDB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(TCDDB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(NGPDB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(NGPDB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)

with open(FDSDB, "r") as GG:
    GG_LIST = GG.readlines()
    GG_LIST = [x.strip() for x in GG_LIST]
    GG_JSON = json.dumps(GG_LIST)
    GG_BYTES = bytes(GG_JSON, "utf-8")
    GG_COMPRESSED = zlib.compress(GG_BYTES, level=9)
    GG_DECOMPRESSED = zlib.decompress(GG_COMPRESSED)
    GG_DECOMPRESSED_JSON = GG_DECOMPRESSED.decode("utf-8")
    GG_LIST = json.loads(GG_DECOMPRESSED_JSON)
with open(FDSDB + ".zlib", "wb") as GG_ZLIB:
    GG_ZLIB.write(GG_COMPRESSED)
