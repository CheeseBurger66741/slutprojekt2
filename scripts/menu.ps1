# AdminTools Menu
# Endast alternativ 1 är färdigt.
# Din uppgift är att koppla ihop resten av menyn.

$running = $true

do {
    Write-Host "=== AdminTools ==="
    Write-Host "1. System Info"
    Write-Host "0. Exit"



    $choice = Read-Host "Select option"

    switch ($choice) {
        1 { 
            Clear-Host 
            .\systemInfo.ps1 #Behöver uppdatera din PATH om du lägger den i en mapp
            Read-Host "Press Enter to return to menu"
        }

        0 {
            $running = $false
        }

        default {
            Write-Host "Invalid option"
        }
    }

} while ($running)