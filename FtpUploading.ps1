$ftpUser = "Stock"
$ftpPassword = "Password123"
$remoteFile = "ftp://aa.com/Stock/Client.zip"
$uploadFile = "D:\FTP\Stock3PRD\Client.zip"
function DeleteFile ([string]$url) {
    write-host "delete ftp file $url"
    $ftp = [System.Net.FtpWebRequest]::Create($url)
    $ftp = [System.Net.FtpWebRequest]$ftp
    $ftp.Method = [System.Net.WebRequestMethods+Ftp]::DeleteFile
    $ftp.Credentials = new-object System.Net.NetworkCredential($ftpUser, $ftpPassword)
    $ftp.UseBinary = $true
    $ftp.UsePassive = $true
    $response = [System.Net.FtpWebResponse]$ftp.GetResponse()
    $response.Close()	
}

function UploadFile([string]$localUrl, [string]$remoteUrl) {
    write-host "upload ftp file $remoteUrl from local $localUrl"
    $ftp = [System.Net.FtpWebRequest]::Create($remoteUrl)
    $ftp = [System.Net.FtpWebRequest]$ftp
    $ftp.Method = [System.Net.WebRequestMethods+Ftp]::UploadFile
    $ftp.Credentials = new-object System.Net.NetworkCredential($ftpUser, $ftpPassword)
    $ftp.UseBinary = $true
    $ftp.UsePassive = $true
    $ftp.Timeout = 500000

    # read in the file to upload as a byte array
    $content = [System.IO.File]::ReadAllBytes($localUrl)
    $ftp.ContentLength = $content.Length

    # get the request stream, and write the bytes into it
    $rs = $ftp.GetRequestStream()
    $rs.Write($content, 0, $content.Length)

    # be sure to clean up after ourselves
    $rs.Close()
    $rs.Dispose()
}

DeleteFile $remoteFile
UploadFile $uploadFile $remoteFile