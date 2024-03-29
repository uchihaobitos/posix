# Pindah ke direktori Documents
cd .\Documents
mkdir "Migrasi" -Wait
cd .\Migrasi

# Mengunduh dan menginstal Google Chrome
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri "https://dl.google.com/chrome/install/latest/chrome_installer.exe" -OutFile "$env:USERPROFILE\Downloads\chrome_installer.exe"
Start-Process -FilePath "$env:USERPROFILE\Downloads\chrome_installer.exe" -Wait
Start-Process -FilePath "chrome.exe" -ArgumentList "http://cloudm.local"

# Mengunduh dan menginstal WinRAR
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-624.exe" -OutFile "$env:USERPROFILE\Downloads\winrar-x64-624.exe"
Start-Process -FilePath "$env:USERPROFILE\Downloads\winrar-x64-624.exe" -ArgumentList "/S" -Wait

# Mengunduh dan menginstal AnyDesk secara diam-diam
Invoke-WebRequest -Uri "https://download.anydesk.com/AnyDesk.exe" -OutFile "$env:USERPROFILE\Downloads\AnyDesk.exe"
Start-Process -FilePath "$env:USERPROFILE\Downloads\AnyDesk.exe"
Start-Sleep -Seconds 5

# Mengatur protokol keamanan untuk Tls12 lagi sebelum mengunduh CloudM-Migrate
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Mengunduh dan menjalankan CloudM-Migrate
Start-Process -FilePath "chrome.exe"
Start-Sleep -Seconds 5
Start-Process -FilePath "chrome.exe" -ArgumentList "https://storage.googleapis.com/cloudmigrator/CloudM-Migrate-3.42.23.0-x64.exe"
Start-Sleep -Seconds 120
Start-Process -FilePath "$env:USERPROFILE\Downloads\CloudM-Migrate-3.42.23.0-x64.exe" -Wait
