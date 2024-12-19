Invoke-RestMethod "https://raw.githubusercontent.com/Jenikh/Get/refs/heads/main/menu.ps1" >.\menu.ps1
if (not Test-Path -Path "./menu.ps1") {
    Write-Warning -Message "Cannot find menu.ps1"
}
Start-Process -FilePath "./menu.ps1" -Wait
Start-Process -FilePath "cmd /c del menu.ps1"
Start-Process -FilePath "cmd.exe /c timeout /t 1 & del get.ps1"
Exit-PSHostProcess
