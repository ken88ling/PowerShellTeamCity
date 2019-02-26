"%serverlist%".Split(',') | ForEach { 
    write-host $_
     write-host "Stop-Website Narra3.cdn......."; 	
            Invoke-Command '$_' {Stop-Website Narra3.Cdn; Stop-WebAppPool Narra3.Cdn}
            write-host "Done Stop-Stop Cdn"; 	
    }

   


"%serverlist%".Split(',') | ForEach { 
    write-host $_
    write-host "Stop-Website Narra3.Client......."; 	
    Invoke-Command '$_' {Start-Website Narra3.Client; Start-WebAppPool Narra3.Client}
    write-host "Stop-Website - " '$_'; 	
}



"%serverlist%".Split(',') | ForEach { 
    write-host $_
    write-host "Stop-Website Narra3.Client......."; 	
    Invoke-Command '$_' {Stop-Website Narra3.Client; Stop-WebAppPool Narra3.Client}
    write-host "Stop-Website - " '$_'; 	
}



$source = '\\IPM-NR-WEB113\Source\Client';

"%serverlist%".Split(',') | ForEach { 
    $destination = "\\$_\NarraV3\Client"  
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
    write-host "Api $destination Process Done"         
}


$source = '\\IPM-NR-WEB113\Source\Api';

"%serverlist%".Split(',') | ForEach { 
    $destination = "\\$_\NarraV3\Api"  
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
    write-host "Api $destination Process Done"         
}