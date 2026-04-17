@echo off
REM もぐらぼ LP を既定ブラウザで開く（このファイルと同じフォルダの index.html）
cd /d "%~dp0"
if not exist "index.html" (
  echo [preview] index.html が見つかりません: %~dp0
  pause
  exit /b 1
)
start "" "%~dp0index.html"
exit /b 0
