$ErrorActionPreference = 'Stop'

# Load DISM into this deployment process
$dismDll = "$env:windir\System32\WindowsPowerShell\v1.0\Modules\Dism\Microsoft.Dism.PowerShell.dll"
$dismAssembly = [System.Reflection.Assembly]::UnsafeLoadFrom($dismDll)
Import-Module -Assembly $dismAssembly -Global -ErrorAction Stop

# Confirm the cmdlet is available before deployment
Get-Command Get-WindowsImage -ErrorAction Stop | Out-Null

Start-OSDCloud -SkipAutopilot -SkipODT -ZTI `
    -OSVersion 'Windows 11' -OSBuild 26H2 `
    -OSEdition Pro -OSLanguage en-us `
    -OSLicense Retail -Restart
