net use \\10.2.11.25
[string]$path="\\10.2.11.25\DISBTORTAK\Saglik_Yerleskesi_Evraklar\ENVANTER\0_Zimmet\$env:UserName" + ".txt"
Write-Output "Bilgisayar Adi" | Out-File -FilePath $path -Append
hostname | Out-File -FilePath $path -Append
Write-Output "Kullanici Adi" | Out-File -FilePath $path -Append
whoami | Out-File -FilePath $path -Append
Write-Output "Bilgisayar Modeli" | Out-File -FilePath $path -Append
wmic /append:$path computersystem get systemfamily
wmic /append:$path bios get serialnumber
getmac /v | Out-File -FilePath $path -Append
Write-Output "Disk Modeli" | Out-File -FilePath $path -Append
wmic /append:$path diskdrive get model
Write-Output "Disk Boyutu" | Out-File -FilePath $path -Append
wmic /append:$path diskdrive get size
Write-Output RAM | Out-File -FilePath $path -Append
wmic /append:$path computersystem get totalphysicalmemory
