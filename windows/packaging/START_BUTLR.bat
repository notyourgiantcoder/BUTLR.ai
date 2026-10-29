@echo off
title Butlr Launcher
cd /d "%~dp0"

echo ===================================================
echo Starting Butlr (Windows Native Desktop Assistant)
echo ===================================================
echo.
if not exist ".env" (
    if "%AI_GATEWAY_API_KEY%"=="" (
        echo [WARNING] No .env file or AI_GATEWAY_API_KEY environment variable detected.
        echo Please make sure you have created .env with your Vercel AI Gateway key.
        echo See .env.example or README.txt for instructions.
        echo.
        pause
    )
)

echo Starting Butlr.App in background...
echo Once started, focus ANY app (Notepad, Calculator, etc.) and press:
echo.
echo     Ctrl + Win
echo.
echo Butlr will appear immediately!
echo.
start "" "%~dp0Butlr.App.exe"
timeout /t 2 >nul
exit
