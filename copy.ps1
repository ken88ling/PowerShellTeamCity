$source = '\\StockServer-WEB02\Source\Api';

$destination1 = "\\StockServer-WEB01\StockV3\Api"
$destination2 = "\\StockServer-WEB02\StockV3\Api"
$destination3 = "\\StockServer-WEB04\StockV3\Api"
$destination4 = "\\StockServer-WEB05\StockV3\Api"
$destination5 = "\\StockServer-WEB06\StockV3\Api"
$destination6 = "\\StockServer\StockV3\Api"
$destination7 = "\\StockServer2\StockV3\Api"

if ("%server46%" -eq "true") {    
    If (test-path $destination1) {
        write-host "Old Files Exist....."
        write-host "removing $destination1"
        Remove-Item $destination2\* -Recurse -Force
        write-host "removing Done"
    }		
    write-host "Copy from... === $source"
    write-host "to => $destination1"
    write-host "Copying............"  

    Remove-Item $destination1\*.*
    Robocopy $source $destination1 /e /xf log*.txt error-*.xml
    write-host "Api 1 Process Done" 
}

if ("%server47%" -eq "true") {    
    If (test-path $destination2) {
        write-host "Old Files Exist....."
        write-host "removing $destination2"
        Remove-Item $destination2\* -Recurse -Force
        write-host "removing Done"
    }		
    write-host "Copy from... === $source"
    write-host "to => $destination2"
    write-host "Copying............"  

    Remove-Item $destination2\*.*
    Robocopy $source $destination2 /e /xf log*.txt error-*.xml
    write-host "Api 2 Process Done" 
}

if ("%server63%" -eq "true") {    
    If (test-path $destination3) {
        write-host "Old Files Exist....."
        write-host "removing $destination3"
        Remove-Item $destination3\* -Recurse -Force
        write-host "removing Done"
    }		
    write-host "Copy from... === $source"
    write-host "to => $destination3"
    write-host "Copying............"  

    Remove-Item $destination3\*.*
    Robocopy $source $destination3 /e /xf log*.txt error-*.xml
    write-host "Api 3 Process Done" 
}

if ("%server64%" -eq "true") {    
    If (test-path $destination4) {
        write-host "Old Files Exist....."
        write-host "removing $destination4"
        Remove-Item $destination4\* -Recurse -Force
        write-host "removing Done"
    }		
    write-host "Copy from... === $source"
    write-host "to => $destination4"
    write-host "Copying............"  

    Remove-Item $destination4\*.*
    Robocopy $source $destination4 /e /xf log*.txt error-*.xml
    write-host "Api 4 Process Done" 
}


if ("%server65%" -eq "true") {    
    If (test-path $destination5) {
        write-host "Old Files Exist....."
        write-host "removing $destination5"
        Remove-Item $destination5\* -Recurse -Force
        write-host "removing Done"
    }		
    write-host "Copy from... === $source"
    write-host "to => $destination5"
    write-host "Copying............"  

    Remove-Item $destination5\*.*
    Robocopy $source $destination5 /e /xf log*.txt error-*.xml
    write-host "Api 5 Process Done" 
}

if ("%serve66%" -eq "true") {    
    If (test-path $destination6) {
        write-host "Old Files Exist....."
        write-host "removing $destination6"
        Remove-Item $destination6\* -Recurse -Force
        write-host "removing Done"
    }		
    write-host "Copy from... === $source"
    write-host "to => $destination6"
    write-host "Copying............"  

    Remove-Item $destination6\*.*
    Robocopy $source $destination6 /e /xf log*.txt error-*.xml
    write-host "Api 6 Process Done" 
}

if ("%server75%" -eq "true") {    
    If (test-path $destination7) {
        write-host "Old Files Exist....."
        write-host "removing $destination7"
        Remove-Item $destination7\* -Recurse -Force
        write-host "removing Done"
    }		
    write-host "Copy from... === $source"
    write-host "to => $destination7"
    write-host "Copying............"  

    Remove-Item $destination7\*.*
    Robocopy $source $destination7 /e /xf log*.txt error-*.xml
    write-host "Api 7 Process Done" 
}