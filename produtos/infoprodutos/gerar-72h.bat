@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"
set "CHROME="
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if not defined CHROME (echo Chrome nao encontrado & pause & exit /b 1)
"!CHROME!" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="%~dp0as-primeiras-72-horas.pdf" "%~dp0as-primeiras-72-horas.html"
timeout /t 3 >nul
