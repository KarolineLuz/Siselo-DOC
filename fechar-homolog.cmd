@echo off
cd /d "%~dp0"
powershell -ExecutionPolicy Bypass -File ".\scripts\homolog-down.ps1"
pause
