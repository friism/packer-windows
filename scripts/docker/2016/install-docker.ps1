$ProgressPreference = 'SilentlyContinue'

Invoke-WebRequest "https://download.docker.com/win/static/test/x86_64/docker-$Env:dockerVersion.zip" -UseBasicParsing -OutFile docker.zip
Expand-Archive docker.zip -DestinationPath $Env:ProgramFiles
Remove-Item -Force docker.zip

[Environment]::SetEnvironmentVariable("Path", $env:Path + ";$($env:ProgramFiles)\docker", [EnvironmentVariableTarget]::Machine)
$env:Path = $env:Path + ";$($env:ProgramFiles)\docker"

dockerd.exe --register-service

Start-Service docker
