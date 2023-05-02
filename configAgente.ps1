# Abrir puerto 51337
New-NetFirewallRule -DisplayName "Discovery Agent" -Direction Inbound -LocalPort 51337 -Protocol TCP -Action Allow

# Buscar el agente en el directorio actual
$dir = Get-Location
$agent = "$dir\Discovery_Agent_Setup_x64.msi"

# Instalar el MSI
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$agent`" /quiet" -Wait
