Write-Host "=== Running Processes ===" -ForegroundColor Cyan
Write-Host ""

$processes = Get-Process |
Sort-Object ProcessName |
Select-Object -First 20

foreach ($process in $processes) {

    Write-Host "Process:" -ForegroundColor Yellow
    Write-Host $process.ProcessName

    Write-Host "ID:" -ForegroundColor Yellow
    Write-Host $process.Id

    Write-Host ""
}



# Enkel loggmodul för AdminTools
### DETTA UNDER LÄNGST NER I SKRIPT FILEN ###

# Skapar loggmappen om den saknas
if (-not (Test-Path ".\logs")) {
    New-Item -ItemType Directory -Path ".\logs" | Out-Null
}

# Skapar loggrad
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

$ModuleName = "runningPeocesses" #Byt ut texten till vad modulen heter

$logEntry = "$timestamp | User: $env:USERNAME | Module: $ModuleName"

# Sparar till loggfil
Add-Content `
    -Path ".\logs\activity.log" `
    -Value $logEntry

Write-Host "Log entry created." -ForegroundColor DarkGreen
