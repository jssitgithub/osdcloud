Set-ExecutionPolicy RemoteSigned -Force

Install-Module AutopilotOOBE -Force -Verbose

Import-Module AutopilotOOBE -Force

Start-AutopilotOOBE -Title 'J&S Autopilot Registrierung' -Assign -PostAction Restart
