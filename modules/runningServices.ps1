Write-Host "=== Running Services ===" -ForegroundColor Cyan
Write-Host ""

$services = Get-Service |
Where-Object { $_.Status -eq "Running" } |
Sort-Object Name

foreach ($service in $services) {

    Write-Host "Service:" -ForegroundColor Yellow
    Write-Host $service.Name

    Write-Host "Status:" -ForegroundColor Yellow
    Write-Host $service.Status

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

$ModuleName = "runningServices" #Byt ut texten till vad modulen heter

$logEntry = "$timestamp | User: $env:USERNAME | Module: $ModuleName"

# Sparar till loggfil
Add-Content `
    -Path ".\logs\activity.log" `
    -Value $logEntry

Write-Host "Log entry created." -ForegroundColor DarkGreen
