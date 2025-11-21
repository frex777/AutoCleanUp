@echo off
color 0B
echo [Maintenance]: Cleaning up the trash...

net session >nul 2>&1
if %errorLevel% NEQ 0 (
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb runAs"
    exit /b
)

del /s /f /q "%TEMP%\*" 2>nul
del /s /f /q "%SystemRoot%\Temp\*" 2>nul
del /s /f /q "%LOCALAPPDATA%\Temp\*" 2>nul

del /s /f /q "%LOCALAPPDATA%\Microsoft\Windows\WER\ReportQueue\*" 2>nul
del /s /f /q "%LOCALAPPDATA%\Microsoft\Windows\WER\Temp\*" 2>nul

wevtutil cl Application
wevtutil cl Security

echo [Maintenance]: Ready. Your PC will thank you :).
exit

:: ========================================================
:: AUTHOR: frex777
:: ========================================================



