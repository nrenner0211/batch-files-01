@echo off
net session >nul 2>&1 || powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs -Wait" && exit /b

:: Export current firewall config as a backup
netsh advfirewall export "C:\firewall_backup.wfw"

:: Enable the firewall on all profiles
netsh advfirewall set allprofiles state on

:: Block all inbound connections by default
@REM netsh advfirewall set allprofiles firewallpolicy blockinbound,allowoutbound
:: NOT RECOMMENDED, will likely break any app that recieves connections

:: Allow inbound on common ports (HTTP, HTTPS, RDP)
netsh advfirewall firewall add rule name="Allow HTTP"  protocol=TCP dir=in localport=80  action=allow
netsh advfirewall firewall add rule name="Allow HTTPS" protocol=TCP dir=in localport=443 action=allow
netsh advfirewall firewall add rule name="Allow RDP"   protocol=TCP dir=in localport=3389 action=allow

:: Block a specific known dangerous port (SMB - common ransomware vector)
@REM netsh advfirewall firewall add rule name="Block SMB" protocol=TCP dir=in localport=445 action=block
:: NOT RECOMMENDED: Will break Windows file sharing and network drives

:: Import backup firewall settings in case something breaks
@REM netsh advfirewall import "C:\firewall_backup.wfw"

pause