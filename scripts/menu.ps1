# AdminTools Menu
$running = $true

do {
    Write-Host "===== AdminTools ====="
    Write-Host ""
    Write-Host "1. userInfo"
    Write-Host "2. bootTime"
    Write-Host ""
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
            ..\modules\userInfo.ps1 
            Read-Host "Press Enter to return to menu"
        }

        2 { 
            Clear-Host 
            ..\modules\bootTime.ps1 
            Read-Host "Press Enter to return to menu"
        }

        3 { 
            Clear-Host 
            ..\modules\cpuinfo.ps1 
            Read-Host "Press Enter to return to menu"
        }

        4 { 
            Clear-Host 
            ..\modules\diskInfo.ps1 
            Read-Host "Press Enter to return to menu"
        }

        5 { 
            Clear-Host 
            ..\modules\memoryInfo.ps1 
            Read-Host "Press Enter to return to menu"
        }

        6 { 
            Clear-Host 
            ..\modules\environmentInfo.ps1 
            Read-Host "Press Enter to return to menu"
        }

        7 { 
            Clear-Host 
            ..\modules\networkInfo.ps1 
            Read-Host "Press Enter to return to menu"
        }

        8 { 
            Clear-Host 
            ..\modules\systemInfo.ps1 
            Read-Host "Press Enter to return to menu"
        }

        9 { 
            Clear-Host 
            ..\modules\runningProcesses.ps1 
            Read-Host "Press Enter to return to menu"
        }

        10 { 
            Clear-Host 
            ..\modules\runningServices.ps1 
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