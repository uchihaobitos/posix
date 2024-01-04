cd .\Documents

# Membuat folder "Migrasi"
mkdir "Migrasi"
cd .\Migrasi

# Mengunduh dan menginstal Google Chrome
Invoke-WebRequest -Uri "https://dl.google.com/chrome/install/latest/chrome_installer.exe" -OutFile "$env:USERPROFILE\Downloads\chrome_installer.exe"
Start-Process -FilePath "$env:USERPROFILE\Downloads\chrome_installer.exe" -Wait
Start-Process -FilePath "chrome.exe" -ArgumentList "http://cloudm.local"

# Mengunduh dan menginstal WinRAR
Invoke-WebRequest -Uri "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-624.exe" -OutFile "winrar-x64-624.exe"
Start-Process -FilePath ".\winrar-x64-624.exe" -Wait

# Mengunduh dan menginstal AnyDesk secara diam-diam
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri "https://download.anydesk.com/AnyDesk.exe" -OutFile "$env:USERPROFILE\Downloads\AnyDesk.exe"
Start-Process -FilePath "$env:USERPROFILE\Downloads\AnyDesk.exe" -ArgumentList "/VERYSILENT" -Wait

# Mengunduh dan menjalankan Google Chrome lagi
Invoke-WebRequest -Uri "https://dl.google.com/chrome/install/latest/chrome_installer.exe" -OutFile "$env:USERPROFILE\Downloads\chrome_installer.exe"
Start-Process -FilePath "$env:USERPROFILE\Downloads\chrome_installer.exe" -Wait
Start-Process -FilePath "chrome.exe" -ArgumentList "http://cloudm.local"

# Mengatur protokol keamanan dan mengunduh serta menjalankan CloudM-Migrate
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri "https://storage.googleapis.com/cloudmigrator/CloudM-Migrate-3.42.23.0-x64.exe" -OutFile "$env:USERPROFILE\Downloads\CloudM-Migrate-3.42.23.0-x64.exe"
Start-Process -FilePath "$env:USERPROFILE\Downloads\CloudM-Migrate-3.42.23.0-x64.exe" -Wait
