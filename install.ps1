# Check if GlazeWM is already installed
$glaze = winget list --name GlazeWM | Select-String "GlazeWM"
if ($glaze) {
    Write-Host "GlazeWM is already installed."
} else {
    Write-Host "Installing GlazeWM..."
    winget install GlazeWM
}

# Check if GlazeWM is already running
$process = Get-Process -Name "glazewm" -ErrorAction SilentlyContinue
if ($process) {
    Write-Host "GlazeWM is already running."
} else {
    Write-Host "Starting GlazeWM..."
    Start-Process "C:\Program Files\glzr.io\GlazeWM\glazewm.exe"
}
