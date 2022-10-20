function Get-CompressedByteArray {

    [CmdletBinding()]
    Param (
        [Parameter(Mandatory,ValueFromPipeline,ValueFromPipelineByPropertyName)]
        [byte[]] $BYTEARRAY# = $(Throw("-byteArray is required"))
    )
    Process {
        Write-Verbose "Get-CompressedByteArray"
        [System.IO.MemoryStream] $OUTPUT = New-Object System.IO.MemoryStream
        $ZLibStream = New-Object System.IO.Compression.ZLibStream $OUTPUT, ([IO.Compression.CompressionMode]::Compress)
        $ZLibStream.Write( $BYTEARRAY, 0, $BYTEARRAY.Length )
        $ZLibStream.Close()
        $OUTPUT.Close()
        $TMP = $OUTPUT.ToArray()
        Write-Output $TMP
    }
}

function Get-DecompressedByteArray {

    [CmdletBinding()]
    Param (
        [Parameter(Mandatory,ValueFromPipeline,ValueFromPipelineByPropertyName)]
        [byte[]] $BYTEARRAY# = $(Throw("-byteArray is required"))
    )
    Process {
        Write-Verbose "Get-DecompressedByteArray"
        $FILEINPUT = New-Object System.IO.MemoryStream( , $BYTEARRAY )
        $OUTPUT = New-Object System.IO.MemoryStream
        $ZLibStream = New-Object System.IO.Compression.ZLibStream $FILEINPUT, ([IO.Compression.CompressionMode]::Decompress)
        $ZLibStream.CopyTo( $OUTPUT )
        $ZLibStream.Close()
        $FILEINPUT.Close()
        [byte[]] $BYTEOUTARRAY = $OUTPUT.ToArray()
        Write-Output $BYTEOUTARRAY
    }
}

function 32X{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("32x.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$32XDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function AMI{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("amiga.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$AMIDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function DC{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("dreamcast.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$DCDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function FDS{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("fds.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$FDSDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function GG{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("game gear.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$GGDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function GB{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("gameboy.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$GBDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function GBA{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("gba.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$GBADB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function GEN{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("gen.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$GENDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function MSX{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("msx.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$MSXDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function N64 {
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("n64.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$N64DB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function NGP{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("neogeopocket.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$NGPDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function NES{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("nes.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$NESDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function PC98{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("pc98.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$PC98DB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function PS1{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("ps1.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$PS1DB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function SM3{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("sm3.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$SM3DB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function SMS{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("sms.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$SMSDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function SNES{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("snes.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$SNESDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function TCD{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("tcd.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$TCDDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function TG16{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("tg16.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$TG16DB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function VB{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("vb.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$VBDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
}

function WS{
    Set-Variable -Name (Join-String -InputObject $MyInvocation.InvocationName,DB) -Value ("ws.txt.zlib")
    [System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
    $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$WSDB")
    $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
    $OPENDB = ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
    $OPENDB = Write-Output -NoEnumerate $OPENDB.Split(";")
    $DBLENGTH = $OPENDB.count
    $RNDLINE = Get-Random -Maximum $DBLENGTH
    $OPENDB[$RNDLINE]
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