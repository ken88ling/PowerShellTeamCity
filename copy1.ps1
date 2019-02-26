$source = '\\IPM-NR-WEB113\Source\Client\assets';

"%serverlist%".Split(',') | ForEach { 
    $destination = "\\$_\NarraV3\Cdn\assets"  
    If (test-path $destination) {
        write-host "Old Files Exist....."
        write-host "removing $destination"
        Remove-Item $destination\* -Recurse -Force
        write-host "removing Done"
    }		
    write-host "Copy from... === $source"
    write-host "to => $destination"
    write-host "Copying............"  
    
    Remove-Item $destination\*.*
    Robocopy $source $destination /e /xf log*.txt error-*.xml
    write-host "$destination Process Done"         
}
