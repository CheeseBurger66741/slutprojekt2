Write-Host "=== Memory Information ===" -ForegroundColor Cyan
Write-Host ""

$computer = Get-CimInstance Win32_ComputerSystem

Write-Host "Installed RAM (GB):" -ForegroundColor Yellow
Write-Host ([math]::Round($computer.TotalPhysicalMemory / 1GB, 2))


# Enkel loggmodul för AdminTools
### DETTA UNDER LÄNGST NER I SKRIPT FILEN ###

# Skapar loggmappen om den saknas
if (-not (Test-Path ".\logs")) {
    New-Item -ItemType Directory -Path ".\logs" | Out-Null
}

# Skapar loggrad
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

$ModuleName = "memoryInfo" #Byt ut texten till vad modulen heter

$logEntry = "$timestamp | User: $env:USERNAME | Module: $ModuleName"

# Sparar till loggfil
Add-Content `
    -Path ".\logs\activity.log" `
    -Value $logEntry

Write-Host "Log entry created." -ForegroundColor DarkGreen
