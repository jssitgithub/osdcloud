Set-ExecutionPolicy RemoteSigned -Force

Install-Module AutopilotOOBE -Force -Verbose

Import-Module AutopilotOOBE -Force

Start-AutopilotOOBE -Title 'j&s-soft Autopilot registration' -Assign -PostAction Restart
