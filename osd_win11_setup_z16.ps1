#Get computer model
    $session = New-CimSession
    $Model = (Get-CimInstance -CimSession $session -Class CIM_Computersystem).Model

    if ($Model -eq '21D4CTO1WW') {

        ## OSDCloud
        Write-Host -ForegroundColor Gray "Windows 11 Professional Retail de-de is being installed now."
        start-osdcloud -OSEdition Pro -OSVersion 'Windows 11' -SkipAutopilot -ZTI -OSLanguage en-us -OSLicense Retail -SkipODT -OSBuild 21H2    
        
        ## download Lenovo Z16 driver and copy to drivers directory
        $url = "https://download.lenovo.com/pccbbs/mobiles/tp_z16_mt21d4-21d5_w11_21_202205.exe"
        $dest = "c:\Drivers\tp_z16_mt21d4-21d5_w11_21_202205.exe"
        Remove-Item -Path c:\Drivers\* -Force -recurse -ErrorAction SilentlyContinue
        Write-Host 'Drivers for Lenovo Z16 are now copied for installation. Please standby...'
        curl.exe $url -o $dest -s        
        
        <#Remove APPX
        Write-Host -ForegroundColor Gray "Please standby while we are cleaning up your new OS from unneccessary Apps..."
        osdcloud-RemoveAppx -name $appx2remove
        #>
                
        #Task sequence complete
        Write-Host -ForegroundColor Green "Task sequence completed :-) // Please unplug the USB drive and reboot the PC by closing all windows."
        Pause
        Break
    }     

    #Start OSDCloud
    Write-Host -ForegroundColor Gray "Windows 11 Professional Retail de-de is being installed now."
    start-osdcloud -OSEdition Pro -OSVersion 'Windows 11' -SkipAutopilot -ZTI -OSLanguage en-us -OSLicense Retail -SkipODT -OSBuild 21H2 -Restart
     
    <#Remove APPX
    Write-Host -ForegroundColor Gray "Please standby while we are cleaning up your new OS from unneccessary Apps..."
    osdcloud-RemoveAppx -name $appx2remove
    #>
        
    #Task sequence complete
    Write-Host -ForegroundColor Green "Task sequence completed :-) // Please unplug the USB drive and reboot the PC by closing all windows."
