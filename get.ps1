# Download and execute get.ps1 from the specified URL
try {
    Invoke-RestMethod -Uri "https://raw.githubusercontent.com/Jenikh/Get/refs/heads/main/get.ps1" -OutFile "./get.ps1"
    Write-Host "Downloaded get.ps1 successfully."
    # Execute get.ps1 directly
    Invoke-Expression -Command (Get-Content "./get.ps1" -Raw)
} catch {
    Write-Warning "Failed to download or execute get.ps1: $_"
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

if (Test-Path -Path "./get.ps1") {
    try {
        Start-Sleep -Seconds 1
        Remove-Item -Path "./get.ps1" -Force
        Write-Host "Deleted get.ps1 successfully."
    } catch {
        Write-Warning "Failed to delete get.ps1: $_"
    }
} else {
    Write-Host "get.ps1 not found. Skipping deletion."
}

# Exit PowerShell process
Write-Host "Exiting PowerShell process."
Exit
