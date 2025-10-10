# run with powershell -File check_hash.ps1

Write-Host "SHA256          97bf53884e0d9880ac4d75c4281622f7e0a4e6bafe7378b9940cf888309821ab".ToUpper()
Get-FileHash Bypass.zip -Algorithm SHA256
