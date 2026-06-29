@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"

set "CHROME="
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" if not defined CHROME set "CHROME=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" if not defined CHROME set "CHROME=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"

if not defined CHROME (
  echo Chrome/Edge nao encontrado. Instale o Chrome ou ajuste o caminho.
  pause
  exit /b 1
)

echo Usando: !CHROME!
"!CHROME!" --headless=new --disable-gpu --no-pdf-header-footer --print-to-pdf="%~dp0o-escudo-da-familia.pdf" "%~dp0o-escudo-da-familia.html"

if exist "%~dp0o-escudo-da-familia.pdf" (
  echo.
  echo PDF gerado com sucesso: %~dp0o-escudo-da-familia.pdf
) else (
  echo.
  echo Falha ao gerar o PDF.
)
timeout /t 4 >nul
