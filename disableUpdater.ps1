Remove-Item -Path "$($env:LOCALAPPDATA)\fiddler-everywhere-updater\*" -Recurse -Force
Write-Host "[*] Fiddler Everywhere updater directory remove all!"

$Acl = Get-Acl "$($env:LOCALAPPDATA)\fiddler-everywhere-updater"
$Ar = New-Object System.Security.AccessControl.FileSystemAccessRule("Everyone", "FullControl", "Deny")
$Acl.SetAccessRule($Ar)
Set-Acl "$($env:LOCALAPPDATA)\fiddler-everywhere-updater" $Acl
Write-Host "[*] Fiddler Everywhere updater directory set-acl rules to all authenticated users 000!"

pause