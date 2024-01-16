function Show-Menu {
    Clear-Host
    Write-Host "1. Get Hello World"
    Write-Host "2. Get User Input"
    Write-Host "Q. Quit"
}

while ($true) {
    Show-Menu
    $choice = Read-Host "Enter your choice"

    switch ($choice) {
        '1' { Get-HelloWorld }
        '2' { Get-UserInput }
        'Q' { break }
        default { Write-Host "Invalid choice. Try again." }
    }
}
