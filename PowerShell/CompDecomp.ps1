function Get-CompressedByteArray {

    [CmdletBinding()]
    Param (
        [Parameter(Mandatory,ValueFromPipeline,ValueFromPipelineByPropertyName)]
        [byte[]] $byteArray = $(Throw("-byteArray is required"))
    )
    Process {
        Write-Verbose "Get-CompressedByteArray"
        [System.IO.MemoryStream] $output = New-Object System.IO.MemoryStream
        $ZLibStream = New-Object System.IO.Compression.ZLibStream $output, ([IO.Compression.CompressionMode]::Compress)
        $ZLibStream.Write( $byteArray, 0, $byteArray.Length )
        $ZLibStream.Close()
        $output.Close()
        $tmp = $output.ToArray()
        Write-Output $tmp
    }
}

function Get-DecompressedByteArray {

    [CmdletBinding()]
    Param (
        [Parameter(Mandatory,ValueFromPipeline,ValueFromPipelineByPropertyName)]
        [byte[]] $byteArray = $(Throw("-byteArray is required"))
    )
    Process {
        Write-Verbose "Get-DecompressedByteArray"
        $FILEINPUT = New-Object System.IO.MemoryStream( , $byteArray )
        $output = New-Object System.IO.MemoryStream
        $ZLibStream = New-Object System.IO.Compression.ZLibStream $FILEINPUT, ([IO.Compression.CompressionMode]::Decompress)
        $ZLibStream.CopyTo( $output )
        $ZLibStream.Close()
        $FILEINPUT.Close()
        [byte[]] $byteOutArray = $output.ToArray()
        Write-Output $byteOutArray
    }
}

$32XDB = "32x.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $32XDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$32XDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$32XDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$AMIDB = "amiga.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $AMIDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$AMIDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$AMIDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$DCDB = "dreamcast.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $DCDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$DCDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$DCDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$FDSDB = "fds.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $FDSDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$FDSDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$FDSDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$GGDB = "game gear.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $GGDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$GGDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$GGDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$GBDB = "gameboy.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $GBDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$GBDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$GBDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$GBADB = "gba.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $GBADB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$GBADB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$GBADB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$GENDB = "gen.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $GENDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$GENDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$GENDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$MSXDB = "msx.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $MSXDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$MSXDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$MSXDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$N64DB = "n64.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $N64DB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$N64DB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$N64DB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$NGPDB = "neogeopocket.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $NGPDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$NGPDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$NGPDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$NESDB = "nes.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $NESDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$NESDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$NESDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$PC98DB = "pc98.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $PC98DB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$PC98DB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$PC98DB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$SM3DB = "sm3.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $SM3DB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$SM3DB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$SM3DB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$SMSDB = "sms.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $SMSDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$SMSDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$SMSDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$SNESDB = "snes.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $SNESDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$SNESDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$SNESDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$TCDDB = "tcd.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $TCDDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$TCDDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$TCDDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$TG16DB = "tg16.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $TG16DB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$TG16DB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$TG16DB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$VBDB = "vb.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $VBDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$VBDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$VBDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )

$WSDB = "ws.txt"
$DOTZLIB = ".zlib"
$text = Get-Content -Path $WSDB -Delimiter ";"
[System.Text.Encoding] $enc = [System.Text.Encoding]::UTF8
[byte[]] $encText = $enc.GetBytes( $text )
$WORKDONE = (Get-CompressedByteArray -byteArray $encText)
[io.file]::WriteAllBytes("$WSDB$DOTZLIB",$WORKDONE)
# $compressedByteArray = [System.IO.File]::ReadAllBytes("$WSDB$DOTZLIB")
# $decompressedByteArray = Get-DecompressedByteArray -byteArray $compressedByteArray
# Write-Host "Decoded: " ( $enc.GetString( $decompressedByteArray ) | Out-String )