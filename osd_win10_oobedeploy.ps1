Install-Module OSD -Force

Write-Host -ForegroundColor Green "Importing OSD PowerShell Module"

Import-Module OSD -Force

Start-OOBEDeploy -UpdateWindows -RemoveAppx "CommunicationsApps,OfficeHub,People,Skype,Solitaire,Xbox,ZuneMusic,ZuneVideo"
