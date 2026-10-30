$ErrorActionPreference = "Stop"

$trivy = "$env:LOCALAPPDATA\Microsoft\WinGet\Packages\AquaSecurity.Trivy_Microsoft.Winget.Source_8wekyb3d8bbwe\trivy.exe"

if (!(Test-Path $trivy)) {
    Write-Error "Trivy executable not found."
    exit 1
}

New-Item -ItemType Directory -Force reports | Out-Null

Write-Host "Starting Trivy vulnerability scan..." -ForegroundColor Cyan

& $trivy fs --scanners vuln .

if ($LASTEXITCODE -ne 0) {
    Write-Error "Trivy scan failed."
    exit $LASTEXITCODE
}

Write-Host "Saving JSON report..." -ForegroundColor Cyan

& $trivy fs --scanners vuln --format json --output reports/final-scan.json .

if ($LASTEXITCODE -ne 0) {
    Write-Error "JSON report generation failed."
    exit $LASTEXITCODE
}

Write-Host "Scan completed successfully!" -ForegroundColor Green
Write-Host "Report: reports/final-scan.json"
