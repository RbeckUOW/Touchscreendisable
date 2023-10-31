@echo off
REM Prompt for administrative privileges
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM Run PowerShell command as admin
powershell.exe -Command "Start-Process powershell.exe -ArgumentList '-Command ""Get-PnpDevice -FriendlyName ''HID-compliant touch screen'' | Enable-PnpDevice -Confirm:$false""' -Verb RunAs"
