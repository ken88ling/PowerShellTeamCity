$ip46 = 'StockServer-WEB01';
$ip47 = 'StockServer-WEB02';
$ip63 = 'StockServer-WEB04';
$ip64 = 'StockServer-WEB05';
$ip65 = 'StockServer-WEB06';
$ip66 = 'StockServer';
$ip75 = 'StockServer2';

if ("%server46%" -eq "true") {    
    write-host "Start-Website Stock3.Api......."; 	
    Invoke-Command $ip46 {Start-Website Stock3.Api; Start-WebAppPool Stock3.Api}
    write-host "Done Start-Website"; 	
}
else {
    write-host "No running => Start server 46 service no running"
}

if ("%server47%" -eq "true") {    
    write-host "Start-Website Stock3.Api......."; 	
    Invoke-Command $ip47 {Start-Website Stock3.Api; Start-WebAppPool Stock3.Api}
    write-host "Done Start-Website"; 	
}
else {
    write-host "No running => Start server 47 service no running"
}

if ("%server63%" -eq "true") {    
    write-host "Start-Website Stock3.Api......."; 	
    Invoke-Command $ip63 {Start-Website Stock3.Api; Start-WebAppPool Stock3.Api}
    write-host "Done Start-Website"; 	
}
else {
    write-host "No running => Start server 63 service no running"
}


if ("%server64%" -eq "true") {    
    write-host "Start-Website Stock3.Api......."; 	
    Invoke-Command $ip64 {Start-Website Stock3.Api; Start-WebAppPool Stock3.Api}
    write-host "Done Start-Website"; 	
}
else {
    write-host "No running => Start server 64 service no running"
}

if ("%server65%" -eq "true") {    
    write-host "Start-Website Stock3.Api......."; 	
    Invoke-Command $ip65 {Start-Website Stock3.Api; Start-WebAppPool Stock3.Api}
    write-host "Done Start-Website"; 	
}
else {
    write-host "No running => Start server 65 service no running"
}

if ("%server66%" -eq "true") {    
    write-host "Start-Website Stock3.Api......."; 	
    Invoke-Command $ip66 {Start-Website Stock3.Api; Start-WebAppPool Stock3.Api}
    write-host "Done Start-Website"; 	
}
else {
    write-host "No running => Start server 66 service no running"
}


if ("%server75%" -eq "true") {    
    write-host "Start-Website Stock3.Api......."; 	
    Invoke-Command $ip75 {Start-Website Stock3.Api; Start-WebAppPool Stock3.Api}
    write-host "Done Start-Website"; 	
}
else {
    write-host "No running => Start server 75 service no running"
}

