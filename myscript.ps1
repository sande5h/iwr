function Get-HelloWorld {
    Write-Output "Hello, World!"
}

function Get-UserInput {
    $input = Read-Host "Enter something:"
    Write-Output "You entered: $input"
}

function Show-Menu {
    Clear-Host
    Write-Host "1. Get Hello World"
    Write-Host "2. Get User Input"
    Write-Host "Q. Quit"
}

while ($true) {
    Show-Menu
    $choice = Read-Host "Enter your choice"

    switch ($choice.ToUpper()) {
        '1' { 
            Get-HelloWorld
            Read-Host "Press Enter to continue"
        }
        '2' { 
            Get-UserInput
            Read-Host "Press Enter to continue"
        }
        'Q' { break }
        default { Write-Host "Invalid choice. Try again." }
    }
}
