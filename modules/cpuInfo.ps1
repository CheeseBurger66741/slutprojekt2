Write-Host "=== CPU Information ===" -ForegroundColor Cyan
Write-Host ""

$cpu = Get-CimInstance Win32_Processor

Write-Host "CPU Name:" -ForegroundColor Yellow
Write-Host $cpu.Name

Write-Host ""
Write-Host "Number of Cores:" -ForegroundColor Yellow
Write-Host $cpu.NumberOfCores


# Enkel loggmodul för AdminTools
### DETTA UNDER LÄNGST NER I SKRIPT FILEN ###

# Skapar loggmappen om den saknas
if (-not (Test-Path ".\logs")) {
    New-Item -ItemType Directory -Path ".\logs" | Out-Null
}

# Skapar loggrad
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

$ModuleName = "cpuInfo" #Byt ut texten till vad modulen heter

$logEntry = "$timestamp | User: $env:USERNAME | Module: $ModuleName"

# Sparar till loggfil
Add-Content `
    -Path ".\logs\activity.log" `
    -Value $logEntry

Write-Host "Log entry created." -ForegroundColor DarkGreen
