function Get-HelloWorld {
    Clear-Host
    Write-Output "Hello, World!"
}

function Get-UserInput {
    Clear-Host
    $input = Read-Host "Enter something:"
    Clear-Host
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
    $choice = Read-Host "`nEnter your choice"

    switch ($choice.ToUpper()) {
        '1' { 
            Get-HelloWorld
            Write-Host "`nPress Enter to continue"
            Read-Host
        }
        '2' { 
            Get-UserInput
            Write-Host "`nPress Enter to continue"
            Read-Host
        }
        'Q' { Exit }
        default { Write-Host "Invalid choice. Try again." }
    }
    Clear-Host
}
