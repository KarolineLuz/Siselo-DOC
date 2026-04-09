@echo off
cd /d "%~dp0"
powershell -ExecutionPolicy Bypass -File ".\scripts\homolog-up.ps1" -d
pause
