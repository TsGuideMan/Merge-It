@echo off
cd /d "%~dp0"
call npm install
if errorlevel 1 (
  echo Installation failed.
  pause
  exit /b 1
)
echo.
echo Install complete. Starting Merge It...
call npm start
