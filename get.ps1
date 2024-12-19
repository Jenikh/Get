# Download and execute menu.ps1 from the specified URL
try {
    Invoke-RestMethod -Uri "https://raw.githubusercontent.com/Jenikh/Get/refs/heads/main/menu.ps1" -OutFile "./menu.ps1"
    Write-Host "Downloaded menu.ps1 successfully."
    # Execute menu.ps1 directly
    Invoke-Expression -Command (Get-Content "./menu.ps1" -Raw)
} catch {
    Write-Warning "Failed to download or execute menu.ps1: $_"
    Exit
}

# Cleanup process
if (Test-Path -Path "./menu.ps1") {
    try {
        Remove-Item -Path "./menu.ps1" -Force
        Write-Host "Deleted menu.ps1 successfully."
    } catch {
        Write-Warning "Failed to delete menu.ps1: $_"
    }
} else {
    Write-Host "menu.ps1 not found. Skipping deletion."
}

if (Test-Path -Path "./menu.ps1") {
    try {
        Start-Sleep -Seconds 1
        Remove-Item -Path "./menu.ps1" -Force
        Write-Host "Deleted menu.ps1 successfully."
    } catch {
        Write-Warning "Failed to delete menu.ps1: $_"
    }
} else {
    Write-Host "menu.ps1 not found. Skipping deletion."
}

# Exit PowerShell process
Write-Host "Exiting PowerShell process."
Exit
