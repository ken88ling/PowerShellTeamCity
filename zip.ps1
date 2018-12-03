$source = "D:\Publish\Stock3PRD\Client"
$destination = "D:\FTP\Stock3PRD\"
$dest_FileName = "Client"
function CompressFile([string]$src, [string]$dest, [string]$fileName) {
    If (!(Test-Path $dest)) {
        New-Item -Path $dest -ItemType Directory
    }
    Write-Host "removing destination files"
    Remove-Item "$dest\$fileName.zip" -Recurse -ErrorAction Ignore
    Write-Host "removed"
    Write-Host "Zip......."
    Add-Type -assembly "system.io.compression.filesystem"
    [io.compression.zipfile]::CreateFromDirectory("$("$source")", "$("$destination/$fileName").zip")
    Write-Host "zip done"
}

Write-Host "source = $source"
CompressFile $source $destination $dest_FileName
Write-Host "destination = $destination"