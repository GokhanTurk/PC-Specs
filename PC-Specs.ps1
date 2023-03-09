[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::InputEncoding = [System.Text.Encoding]::UTF8
net use \\10.2.11.25
[string]$path="\\10.2.11.25\Sağlık Yerleşkesi Evraklar\ENVANTER\Zimmet\$env:UserName" + ".txt"
Write-Output "Bilgisayar Adi\Kullanici" | Out-File -FilePath $path -Append
hostname | Out-File -FilePath $path -Append
whoami | Out-File -FilePath $path -Append
#Write-Output "Bilgisayar Adi" | Out-File -FilePath $path -Append
#hostname | Out-File -FilePath $path -Append
Write-Output "Bilgisayar Modeli" | Out-File -FilePath $path -Append
wmic /append:$path computersystem get systemfamily
#Write-Output "Seri Nu" | Out-File -FilePath $path -Append
wmic /append:$path bios get serialnumber
getmac /v | Out-File -FilePath $path -Append
Write-Output "Disk Modeli" | Out-File -FilePath $path -Append
wmic /append:$path diskdrive get model
Write-Output "Disk Boyutu" | Out-File -FilePath $path -Append
wmic /append:$path diskdrive get size
Write-Output RAM | Out-File -FilePath $path -Append
wmic /append:$path computersystem get totalphysicalmemory
pause
exit
