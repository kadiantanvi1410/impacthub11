@echo off
title ImpactHub Local Server
cd /d "%~dp0"
echo ========================================================
echo   Starting ImpactHub Non-Profit Platform on Localhost
echo ========================================================
echo.
echo Opening http://localhost:3000 in your browser...
start http://localhost:3000
echo.
npm run dev -- --port 3000
pause
