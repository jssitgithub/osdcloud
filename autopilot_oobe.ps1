# Install, import and start Windows Autopilot
Set-ExecutionPolicy RemoteSigned -Force
Install-Module AutopilotOOBE -Force -Verbose
Import-Module AutopilotOOBE -Force
Start-AutopilotOOBE -Title 'j&s-soft AG - Windows Autopilot registration' -Assign -PostAction Restart
