@echo off
net session >nul 2>&1 || powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs -Wait" && exit /b

DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth
sfc /scannow

pause