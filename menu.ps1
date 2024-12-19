Write-Host "Menu for utils!" -ForegroundColor Green
Write-Host "Made by JenikH with ❤️" -ForegroundColor Red
Write-Host "   "
Write-Information "1) TEST"
Write-Information "2) TEST"
Write-Information "3) TEST"
Write-Information "4) TEST"
Write-Information "5) TEST"
Write-Information "6) TEST"
$max = 6
$min = 1
$option_menu = Read-Host -Prompt "Write menu option"
Clear-Host
if ( $option_menu =< $max ) {
    if ( $option_menu => $min ) {

    }
    else {
        Start-Process "./get.ps1"
        Exit-PSHostProcess
    }
} else {
    Start-Process "./get.ps1"
    Exit-PSHostProcess
    Write-Host $option_menu
}