# systemInfo.ps1

Write-Host "=== System Information ===" -ForegroundColor Cyan
Write-Host ""

# Hämtar operativsystemsinformation
$os = Get-CimInstance Win32_OperatingSystem

Write-Host "Operating System:" -ForegroundColor Yellow
Write-Host $os.Caption

Write-Host ""
Write-Host "Version:" -ForegroundColor Yellow
Write-Host $os.Version

Write-Host ""

# -----------------------------
# Loggning
# -----------------------------

# Skapar loggmappen om den saknas
if (-not (Test-Path ".\logs")) {
    New-Item -ItemType Directory -Path ".\logs" | Out-Null
}

# Namnet på modulen
$ModuleName = "System Information"

# Skapar loggrad
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

$logEntry = "$timestamp | User: $env:USERNAME | Module: $ModuleName"

# Sparar till loggfil
Add-Content `
    -Path ".\logs\activity.log" `
    -Value $logEntry

Write-Host "Log entry created." -ForegroundColor Green


# Enkel loggmodul för AdminTools
### DETTA UNDER LÄNGST NER I SKRIPT FILEN ###

# Skapar loggmappen om den saknas
if (-not (Test-Path ".\logs")) {
    New-Item -ItemType Directory -Path ".\logs" | Out-Null
}

# Skapar loggrad
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

$ModuleName = "systemInfo" #Byt ut texten till vad modulen heter

$logEntry = "$timestamp | User: $env:USERNAME | Module: $ModuleName"

# Sparar till loggfil
Add-Content `
    -Path ".\logs\activity.log" `
    -Value $logEntry

Write-Host "Log entry created." -ForegroundColor DarkGreen
