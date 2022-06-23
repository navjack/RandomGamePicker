#!/usr/bin/env python3
# pylint: disable=missing-module-docstring

# NavJack's Text File Compressor

import zlib
import json

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

# Open GAMEGEARDB and read it into a list and convert that list into
# JSON and then convert the JSON into a bytes-like object and then
# use zlib.compress() to compress the bytes-like object and then
# decompress it using zlib.decompress() and convert the bytes-like
# object into JSON and then convert that into a python list and
# display the list.
with open(GAMEGEARDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)

# Save JOB_COMPRESSED as GAMEGEARDB + ".zlib"
with open(GAMEGEARDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)

# Save the decompressed data to verify.
#with open(NESDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

# Do the same with the next database file
with open(GAMEBOYDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(GAMEBOYDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(GAMEBOYDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(NESDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(NESDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(NESDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(PS1DB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(PS1DB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(PS1DB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(SNESDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(SNESDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(SNESDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(N64DB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(N64DB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(N64DB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(GBADB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(GBADB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(GBADB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(GENDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(GENDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(GENDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(SMSDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(SMSDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(SMSDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(VBDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(VBDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(VBDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(SM3DB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(SM3DB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(SM3DB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(WSDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(WSDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(WSDB) + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(S32XDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(S32XDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(S32XDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(TG16DB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(TG16DB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(TG16DB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(TCDDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(TCDDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(TCDDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(NGPDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(NGPDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(NGPDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(FDSDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(FDSDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(FDSDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(AMIDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(AMIDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(AMIDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(MSXDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(MSXDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(MSXDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(DCDB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(DCDB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(DCDB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")

with open(PC98DB, "r", encoding='utf8') as JOB:
    JOB_LIST = JOB.readlines()
    JOB_LIST = [x.strip() for x in JOB_LIST]
    JOB_JSON = json.dumps(JOB_LIST)
    JOB_BYTES = bytes(JOB_JSON, "utf-8")
    JOB_COMPRESSED = zlib.compress(JOB_BYTES, level=9)
    JOB_DECOMPRESSED = zlib.decompress(JOB_COMPRESSED)
    JOB_DECOMPRESSED_JSON = JOB_DECOMPRESSED.decode("utf-8")
    JOB_LIST = json.loads(JOB_DECOMPRESSED_JSON)
with open(PC98DB + ".zlib", "wb") as JOB_ZLIB:
    JOB_ZLIB.write(JOB_COMPRESSED)
#with open(PC98DB + ".list.txt", "wt") as JOB_ZLIB:
#    for item in JOB_LIST:
#        JOB_ZLIB.write(str(item) + "\n")
