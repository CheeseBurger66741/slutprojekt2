Write-Host "=== Network Information ===" -ForegroundColor Cyan
Write-Host ""

$addresses = Get-NetIPAddress |
Where-Object { $_.AddressFamily -eq "IPv4" }

foreach ($address in $addresses) {

    Write-Host "Interface:" -ForegroundColor Yellow
    Write-Host $address.InterfaceAlias

    Write-Host "IPv4 Address:" -ForegroundColor Yellow
    Write-Host $address.IPAddress

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

$ModuleName = "networkInfo" #Byt ut texten till vad modulen heter

$logEntry = "$timestamp | User: $env:USERNAME | Module: $ModuleName"

# Sparar till loggfil
Add-Content `
    -Path ".\logs\activity.log" `
    -Value $logEntry

Write-Host "Log entry created." -ForegroundColor DarkGreen
