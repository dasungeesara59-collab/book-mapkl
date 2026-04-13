@echo off
setlocal
echo ==================================================
echo   🚀 OrderBook Pro - Local Preview Starter
echo ==================================================
echo.
cd /d "%~dp0"

:: Check if node_modules exists
if not exist "node_modules\" (
    echo [1/2] Installing required libraries (First time only)...
    echo This may take a minute...
    call npm install
) else (
    echo [1/1] Libraries are ready.
)

echo.
echo [2/2] Starting local web server...
echo.
echo [TIP] Your browser should open automatically at http://localhost:3000
echo [TIP] Press Ctrl+C in this window to stop the server.
echo.

:: Run vite directly via node to bypass PowerShell execution policies
node node_modules\vite\bin\vite.js --port 3000 --open

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] Failed to start the server. 
    echo Please make sure you have Node.js installed on your laptop.
    echo You can download it from: https://nodejs.org/
    pause
)
