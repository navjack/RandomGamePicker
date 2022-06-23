function 32X{
    $32XDB = "32x.txt"
    $OPENDB = Get-Content -Path $32XDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $32XDB -TotalCount $RNDLINE)[-1]
}

function AMI{
    $AMIDB = "amiga.txt"
    $OPENDB = Get-Content -Path $AMIDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $AMIDB -TotalCount $RNDLINE)[-1]
}

function DC{
    $DCDB = "dreamcast.txt"
    $OPENDB = Get-Content -Path $DCDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $DCDB -TotalCount $RNDLINE)[-1]
}

function FDS{
    $FDSDB = "fds.txt"
    $OPENDB = Get-Content -Path $FDSDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $FDSDB -TotalCount $RNDLINE)[-1]
}

function GG{
    $GGDB = "game gear.txt"
    $OPENDB = Get-Content -Path $GGDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $GGDB -TotalCount $RNDLINE)[-1]
}

function GB{
    $GBDB = "gameboy.txt"
    $OPENDB = Get-Content -Path $GBDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $GBDB -TotalCount $RNDLINE)[-1]
}

function GBA{
    $GBADB = "gba.txt"
    $OPENDB = Get-Content -Path $GBADB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $GBADB -TotalCount $RNDLINE)[-1]
}

function GEN{
    $GENDB = "gen.txt"
    $OPENDB = Get-Content -Path $GENDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $GENDB -TotalCount $RNDLINE)[-1]
}

function MSX{
    $MSXDB = "msx.txt"
    $OPENDB = Get-Content -Path $MSXDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $MSXDB -TotalCount $RNDLINE)[-1]
}

function N64 {
    $N64DB = "n64.txt"
    $OPENDB = Get-Content -Path $N64DB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $N64DB -TotalCount $RNDLINE)[-1]
}

function NGP{
    $NGPDB = "neogeopocket.txt"
    $OPENDB = Get-Content -Path $NGPDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $NGPDB -TotalCount $RNDLINE)[-1]
}

function NES{
    $NESDB = " nes.txt"
    $OPENDB = Get-Content -Path $NESDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $NESDB -TotalCount $RNDLINE)[-1]
}

function PC98{
    $PC98DB = "pc98.txt"
    $OPENDB = Get-Content -Path $PC98DB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $PC98DB -TotalCount $RNDLINE)[-1]
}

function PS1{
    $PS1DB = "ps1.txt"
    $OPENDB = Get-Content -Path $PS1DB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $PS1DB -TotalCount $RNDLINE)[-1]
}

function SM3{
    $SM3DB = "sm3.txt"
    $OPENDB = Get-Content -Path $SM3DB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $SM3DB -TotalCount $RNDLINE)[-1]
}

function SMS{
    $SMSDB = "sms.txt"
    $OPENDB = Get-Content -Path $SMSDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $SMSDB -TotalCount $RNDLINE)[-1]
}

function SNES{
    $SNESDB = "snes.txt"
    $OPENDB = Get-Content -Path $SNESDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $SNESDB -TotalCount $RNDLINE)[-1]
}

function TCD{
    $TCDDB = "tcd.txt"
    $OPENDB = Get-Content -Path $TCDDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $TCDDB -TotalCount $RNDLINE)[-1]
}

function TG16{
    $TG16DB = "tg16.txt"
    $OPENDB = Get-Content -Path $TG16DB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $TG16DB -TotalCount $RNDLINE)[-1]
}

function VB{
    $VBDB = "vb.txt"
    $OPENDB = Get-Content -Path $VBDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $VBDB -TotalCount $RNDLINE)[-1]
}

function WS{
    $WSDB = "ws.txt"
    $OPENDB = Get-Content -Path $WSDB
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    (Get-Content -Path $WSDB -TotalCount $RNDLINE)[-1]
}

$MENU01 = " 1. Sega 32x"
$MENU02 = " 2. Commodore Amiga"
$MENU03 = " 3. Sega Dreamcast"
$MENU04 = " 4. Nintendo Famicom Disk System"
$MENU05 = " 5. Sega Game Gear"
$MENU06 = " 6. Nintendo Game Boy"
$MENU07 = " 7. Nintendo Game Boy Advance"
$MENU08 = " 8. Sega Genesis"
$MENU09 = " 9. MSX"
$MENU10 = "10. Nintendo N64"
$MENU11 = "11. Neo Geo Pocket"
$MENU12 = "12. Nintendo Entertainment System"
$MENU13 = "13. PC-98"
$MENU14 = "14. PlayStation 1"
$MENU15 = "15. Sega Mark 3"
$MENU16 = "16. Sega Master System"
$MENU17 = "17. Nintendo Super Entertainment System"
$MENU18 = "18. Turbo CD"
$MENU19 = "19. TurboGrafx 16"
$MENU20 = "20. Nintendo Virtual Boy"
$MENU21 = "21. Wonderswan"

Write-Host "$MENU01"
Write-Host "$MENU02"
Write-Host "$MENU03"
Write-Host "$MENU04"
Write-Host "$MENU05"
Write-Host "$MENU06"
Write-Host "$MENU07"
Write-Host "$MENU08"
Write-Host "$MENU09"
Write-Host "$MENU10"
Write-Host "$MENU11"
Write-Host "$MENU12"
Write-Host "$MENU13"
Write-Host "$MENU14"
Write-Host "$MENU15"
Write-Host "$MENU16"
Write-Host "$MENU17"
Write-Host "$MENU18"
Write-Host "$MENU19"
Write-Host "$MENU20"
Write-Host "$MENU21"

$PICKONE = "Please pick a system:"
$YOUDIDNT = "You didn't type anything."
$EXITING = "Exiting..."

Write-Host "$PICKONE"
$SELECTION = Read-Host "?"

if ($SELECTION -eq "1") {32X}
elseif ($SELECTION -eq "2") {AMI}
elseif ($SELECTION -eq "3") {DC}
elseif ($SELECTION -eq "4") {FDS}
elseif ($SELECTION -eq "5") {GG}
elseif ($SELECTION -eq "6") {GB}
elseif ($SELECTION -eq "7") {GBA}
elseif ($SELECTION -eq "8") {GEN}
elseif ($SELECTION -eq "9") {MSX}
elseif ($SELECTION -eq "10") {N64}
elseif ($SELECTION -eq "11") {NGP}
elseif ($SELECTION -eq "12") {NES}
elseif ($SELECTION -eq "13") {PC98}
elseif ($SELECTION -eq "14") {PS1}
elseif ($SELECTION -eq "15") {SM3}
elseif ($SELECTION -eq "16") {SMS}
elseif ($SELECTION -eq "17") {SNES}
elseif ($SELECTION -eq "18") {TCD}
elseif ($SELECTION -eq "19") {TG16}
elseif ($SELECTION -eq "20") {VB}
elseif ($SELECTION -eq "21") {WS}
else {Write-Host "$YOUDIDNT$EXITING"; Exit}
