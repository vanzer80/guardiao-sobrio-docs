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
  echo Chrome/Edge nao encontrado.
  pause
  exit /b 1
)

echo Usando: !CHROME!
echo.

call :gerar "o-escudo-da-familia"      esc
call :gerar "as-primeiras-72-horas"    h72
call :gerar "o-metodo-13-fundamentos"  met

echo.
echo === Concluido. Verifique os 3 PDFs. ===
timeout /t 6 >nul
exit /b 0

:gerar
set "NOME=%~1"
set "PERFIL=%TEMP%\gs_pdf_%~2"
if exist "%PERFIL%" rmdir /s /q "%PERFIL%" 2>nul
echo Gerando: %NOME%.pdf
"!CHROME!" --headless=new --disable-gpu --no-sandbox --no-pdf-header-footer ^
  --user-data-dir="%PERFIL%" ^
  --virtual-time-budget=20000 --run-all-compositor-stages-before-draw ^
  --print-to-pdf="%~dp0%NOME%.pdf" "%~dp0%NOME%.html"
if exist "%PERFIL%" rmdir /s /q "%PERFIL%" 2>nul
timeout /t 2 >nul
exit /b 0
