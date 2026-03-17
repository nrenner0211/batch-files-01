# RUN IN POWERSHELL AS ADMIN TO GET HARDWARE IDs. Can be used in bulk processes.

mkdir c:\HWID
Set-Location c:\HWID
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted -Force
Install-Script -Name Get-WindowsAutopilotInfo -Force
$env:PATH += ";C:\ProgramFiles\WindowsPowerShell\Scripts"
Get-WindowsAutopilotInfo.ps1 -OutputFile AutopilotHWID.csv