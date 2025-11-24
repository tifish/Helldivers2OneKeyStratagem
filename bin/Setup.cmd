@echo off
setlocal

"%ProgramFiles%\dotnet\dotnet.exe" --version | findstr /r "^10\." >nul 2>nul
if errorlevel 1 (
    winget install Microsoft.DotNET.Runtime.10
)

start "" "%~dp0Helldivers2OneKeyStratagem.exe"

endlocal
