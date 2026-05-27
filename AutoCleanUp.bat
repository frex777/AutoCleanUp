@echo off
del /s /f /q "%TEMP%\*.*" 2>nul
for /d %%x in ("%TEMP%\*") do rmdir /s /q "%%x" 2>nul

del /s /f /q "%SystemRoot%\Temp\*.*" 2>nul
for /d %%x in ("%SystemRoot%\Temp\*") do rmdir /s /q "%%x" 2>nul

del /s /f /q "%LOCALAPPDATA%\Microsoft\Windows\WER\ReportQueue\*.*" 2>nul
del /s /f /q "%LOCALAPPDATA%\Microsoft\Windows\WER\Temp\*.*" 2>nul

:: ========================================================
:: AUTHOR: frex777
:: ========================================================
exit



