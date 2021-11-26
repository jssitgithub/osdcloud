Start-OOBEDeploy -UpdateWindows -RemoveAppx "CommunicationsApps,OfficeHub,People,Skype,Solitaire,Xbox,ZuneMusic,ZuneVideo"
Start-Sleep -s 60
Restart-Computer
