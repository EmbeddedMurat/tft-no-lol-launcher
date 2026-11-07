@echo off
setlocal

"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoLogo -NoProfile -NonInteractive -Command ^
    "$ErrorActionPreference = 'Stop';" ^
    "if (Get-Process -Name 'RiotClientServices' -ErrorAction SilentlyContinue) {" ^
    "    Write-Host 'Exit Riot Client from the Windows system tray, then run this again.';" ^
    "    Write-Host 'Riot Client simgesine sag tiklayip Cikis secenegine basin ve tekrar deneyin.';" ^
    "    exit 1;" ^
    "};" ^
    "$installRecord = Join-Path $env:ProgramData 'Riot Games\RiotClientInstalls.json';" ^
    "$clientPaths = @();" ^
    "if (Test-Path -LiteralPath $installRecord -PathType Leaf) {" ^
    "    try {" ^
    "        $record = Get-Content -LiteralPath $installRecord -Raw | ConvertFrom-Json;" ^
    "        $clientPaths += $record.rc_live, $record.rc_default;" ^
    "    } catch {" ^
    "        Write-Host 'Could not read Riot install information. Checking the default location.';" ^
    "    };" ^
    "};" ^
    "$clientPaths += Join-Path ($env:SystemDrive + '\') 'Riot Games\Riot Client\RiotClientServices.exe';" ^
    "$client = $clientPaths | Where-Object {" ^
    "    $_ -is [string] -and $_ -match '^[A-Za-z]:[/\\]' -and" ^
    "    (Split-Path -Leaf $_) -eq 'RiotClientServices.exe' -and" ^
    "    (Test-Path -LiteralPath $_ -PathType Leaf)" ^
    "} | Select-Object -First 1;" ^
    "if (-not $client) {" ^
    "    Write-Host 'Riot Client not found. See the manual steps in README.md.';" ^
    "    Write-Host 'Riot Client bulunamadi. README.md dosyasindaki elle baslatma adimina bakin.';" ^
    "    exit 1;" ^
    "};" ^
    "Start-Process -FilePath $client -WorkingDirectory (Split-Path -Parent $client) -ArgumentList '--launch-product=teamfighttactics', '--launch-patchline=live', '--disable-patching';"

if errorlevel 1 (
    echo.
    pause
    exit /b 1
)
exit /b 0
