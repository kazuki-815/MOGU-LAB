@echo off
REM Open Mogulabo LP: public-site-url.txt (https...) if present, else local index.html
cd /d "%~dp0"
if not exist "index.html" (
  echo [preview] index.html not found: %~dp0
  pause
  exit /b 1
)
powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-Location -LiteralPath '.'; $u=$null; if (Test-Path -LiteralPath 'public-site-url.txt') { foreach ($line in Get-Content -LiteralPath 'public-site-url.txt' -Encoding UTF8) { $t=$line.Trim(); if ([string]::IsNullOrWhiteSpace($t) -or $t.StartsWith('#')) { continue }; if ($t -match '^(https?://)') { $u=$t; break } } }; if ($u) { Start-Process $u } else { Start-Process ((Resolve-Path -LiteralPath 'index.html').Path) }"
exit /b 0
