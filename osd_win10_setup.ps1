## Change Display Resolution for Virtual Machine
if ((Get-MyComputerModel) -match 'Virtual') 
{
Write-Host -ForegroundColor Green "Setting Display Resolution to 1600x"
Set-DisRes 1600
} 

## change the default "Start-OSDCloud" behaviour from Windows 11 to Windows 10
$osdlatest = Get-InstalledModule -Name OSD
$fullpath = Join-Path 'X:\Program Files\WindowsPowerShell\Modules\OSD' $osdlatest.version | Join-Path -ChildPath '\Public\OSDCloud\'
(Get-Content $fullpath\Start-OSDCloud.ps1).Replace("OSVersion = 'Windows 11'","OSVersion = 'Windows 10'") | Out-File $fullpath\Start-OSDCloud.ps1 -ErrorAction SilentlyContinue

## Start OSDCloud with Params
Write-Host -ForegroundColor Green "Start OSDCloud ZTI (Win10 Professional, Version 21H2, English)"
Start-OSDCloud -OSLanguage en-us -OSBuild 21H2 -OSEdition Pro -ZTI

##Restart from WinPE
Write-Host -ForegroundColor Cyan "Restarting in 10 seconds!"
Start-Sleep -Seconds 10
wpeutil reboot
