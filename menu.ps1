# Display the menu
Write-Host "Menu for utils!" -ForegroundColor Green
Write-Host "Made by JenikH with ❤️" -ForegroundColor Red
Write-Host "   "
Write-Information "1) TEST"
Write-Information "2) TEST"
Write-Information "3) TEST"
Write-Information "4) TEST"
Write-Information "5) TEST"
Write-Information "6) TEST"

# Define the menu boundaries
$max = 6
$min = 1

# Get user input
$option_menu = Read-Host -Prompt "Write menu option"

# Clear the console
Clear-Host

# Validate the input
if ($option_menu -ge $min -and $option_menu -le $max) {
    Write-Host "You selected option $option_menu" -ForegroundColor Cyan
    # Add actions for the selected menu option here if needed
} else {
    Write-Host "Invalid option. Returning to main script." -ForegroundColor Yellow
    # Restart the process by invoking get.ps1
    Start-Process -FilePath "powershell.exe" -ArgumentList "-File ./get.ps1" -Wait
    Exit
}
