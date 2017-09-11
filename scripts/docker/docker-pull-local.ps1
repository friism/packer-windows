$ProgressPreference = 'SilentlyContinue'
Write-Host "Downloading nanoserver image"
docker import http://$Env:PACKER_HTTP_ADDR/nanoserver.tar.gz microsoft/nanoserver:latest
Write-Host "Downloading windowsservercore image"
docker import http://$Env:PACKER_HTTP_ADDR/windowsservercore.tar.gz microsoft/windowsservercore:latest
