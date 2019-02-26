"%serverlist%".Split(',') | ForEach { 
    write-host $_
    write-host "Stop-Website Narra3.Client......."; 	
    Invoke-Command '$_' {Start-Website Narra3.Client; Start-WebAppPool Narra3.Client}
    write-host "Stop-Website - $_"; 	
}