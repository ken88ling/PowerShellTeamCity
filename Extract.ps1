$Source1 = "\\IPM-2-DEV01\Stock\Api.zip"
$Destination = "\\StockServer-WEB02\Source\Api"

If (test-path $destination) {
    write-host "removing $destination"
    Remove-Item $Destination\* -Recurse -Force
}

write-host "removing Done"
write-host "ExtractToDirectory..."	
write-host "from $Source1 to"
write-host "$destination"

Add-Type -assembly "system.io.compression.filesystem"
[io.compression.zipfile]::ExtractToDirectory($Source1, $destination)
write-host "Extract Done"