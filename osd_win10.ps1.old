Write-Host -ForegroundColor Green "Starting OSDCloud ZTI"

Start-Sleep -Seconds 5

#Change Display Resolution for Virtual Machine

if ((Get-MyComputerModel) -match 'Virtual') {

Write-Host -ForegroundColor Green "Setting Display Resolution to 1600x"

Set-DisRes 1600

}

#Start OSDCloud

Write-Host -ForegroundColor Green "Start OSDCloud ZTI (Win10 Professional, Version 21H2, German)"

Start-OSDCloud -OSLanguage de-de -OSBuild 21H2 -OSEdition Pro -ZTI

#Restart from WinPE
Write-Host  -ForegroundColor Cyan "Restarting in 10 seconds!"
Start-Sleep -Seconds 10
wpeutil reboot
