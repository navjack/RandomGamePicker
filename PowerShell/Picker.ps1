function Get-CompressedByteArray {

    [CmdletBinding()]
    Param (
        [Parameter(Mandatory,ValueFromPipeline,ValueFromPipelineByPropertyName)]
        [byte[]] $BYTEARRAY = $(Throw("-byteArray is required"))
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
        [byte[]] $BYTEARRAY = $(Throw("-byteArray is required"))
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

$32XDB = "32x.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $32XDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$32XDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$32XDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$AMIDB = "amiga.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $AMIDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$AMIDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$AMIDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$DCDB = "dreamcast.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $DCDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$DCDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$DCDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$FDSDB = "fds.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $FDSDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$FDSDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$FDSDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$GGDB = "game gear.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $GGDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$GGDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$GGDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$GBDB = "gameboy.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $GBDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$GBDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$GBDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$GBADB = "gba.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $GBADB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$GBADB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$GBADB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$GENDB = "gen.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $GENDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$GENDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$GENDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$MSXDB = "msx.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $MSXDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$MSXDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$MSXDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$N64DB = "n64.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $N64DB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$N64DB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$N64DB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$NGPDB = "neogeopocket.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $NGPDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$NGPDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$NGPDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$NESDB = "nes.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $NESDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$NESDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$NESDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$PC98DB = "pc98.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $PC98DB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$PC98DB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$PC98DB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$SM3DB = "sm3.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $SM3DB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$SM3DB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$SM3DB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$SMSDB = "sms.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $SMSDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$SMSDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$SMSDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$SNESDB = "snes.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $SNESDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$SNESDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$SNESDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$TCDDB = "tcd.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $TCDDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$TCDDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$TCDDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$TG16DB = "tg16.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $TG16DB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$TG16DB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$TG16DB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$VBDB = "vb.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $VBDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$VBDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$VBDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )

$WSDB = "ws.txt"
$DOTZLIB = ".zlib"
$TEXT = Get-Content -Path $WSDB -Delimiter ";"
[System.Text.Encoding] $ENC = [System.Text.Encoding]::UTF8
[byte[]] $ENCTEXT = $ENC.GetBytes( $TEXT )
$WORKDONE = (Get-CompressedByteArray -byteArray $ENCTEXT)
[io.file]::WriteAllBytes("$WSDB$DOTZLIB",$WORKDONE)
# $COMPRESSEDBYTEARRAY = [System.IO.File]::ReadAllBytes("$WSDB$DOTZLIB")
# $DECOMPRESSEDBYTEARRAY = Get-DecompressedByteArray -byteArray $COMPRESSEDBYTEARRAY
# Write-Host "Decoded: " ( $ENC.GetString( $DECOMPRESSEDBYTEARRAY ) | Out-String )
