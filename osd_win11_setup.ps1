## change the default "Start-OSDCloud" behaviour from Windows 10 to Windows 11
$osdlatest = Get-InstalledModule -Name OSD
$fullpath = Join-Path 'X:\Program Files\WindowsPowerShell\Modules\OSD' $osdlatest.version | Join-Path -ChildPath '\Public\OSDCloud\'
(Get-Content $fullpath\Start-OSDCloud.ps1).Replace("OSVersion = 'Windows 10'","OSVersion = 'Windows 11'") | Out-File $fullpath\Start-OSDCloud.ps1 -ErrorAction SilentlyContinue

## Start OSDCloud with Params
Start-OSDCloud -SkipAutopilot -SkipODT -ZTI -OSBuild 21H2 -OSEdition Pro -OSLanguage en-us -OSLicense Retail -Restart
