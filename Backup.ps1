$source = "\\StockServer-WEB02\StockV3\Api"
$destination = "\\StockServer-WEB02\Backup"
Write-Host "Backup Start"
Write-Host "source = $source"
Write-Host "destination = $destination"

[string]$newFileName = "Stock3_Api_" + [DateTime]::Now.ToString("yyyyMMdd-HHmmss") + ".zip";
function CompressFile([string]$src, [string]$dest, [string]$fileName) {
    If (!(Test-Path $dest)) {
        New-Item -Path $dest -ItemType Directory
    }

    Remove-Item "$dest\$fileName.zip" -Recurse -ErrorAction Ignore
    Add-Type -assembly "system.io.compression.filesystem"
    [io.compression.zipfile]::CreateFromDirectory("$("$source")", "$("$destination/$fileName").zip")
}

Write-Host "Backup starting......"
CompressFile $source $destination $newFileName
Write-Host "Backup Done"


