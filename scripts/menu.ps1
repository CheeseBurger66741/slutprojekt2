# AdminTools Menu
# Endast alternativ 1 är färdigt.
# Din uppgift är att koppla ihop resten av menyn.

$running = $true

do {
    Write-Host "===== AdminTools ====="
    Write-Host ""
    Write-Host "1. userInfo"
    Write-Host ""
    Write-Host "2. bootTime"
    Write-Host "3. cpuinfo"
    Write-Host "4. diskInfo"
    Write-Host "5. memoryInfo"
    Write-Host ""
    Write-Host "6. environmentInfo"
    Write-Host "7. networkInfo"
    Write-Host "8. SystemInfo"
    Write-Host ""
    Write-Host "9. runningProcesses"
    Write-Host "10. runningServices"
    Write-Host ""
    Write-Host "0. Exit"
    Write-Host "======================"



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