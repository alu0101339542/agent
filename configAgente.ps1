# Open port 51337
New-NetFirewallRule -DisplayName "Open Port 51337" -Direction Inbound -LocalPort 51337 -Protocol TCP -Action Allow

# Get current directory and MSI package path
$dir = Get-Location
$agent = "$dir\Discovery_Agent_Setup_x64.msi"

# Install MSI package
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$agent`" /quiet" -Wait
