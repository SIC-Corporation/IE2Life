@echo off
title SIC Corp - IE Firewall Shield
echo ===================================================
echo     SIC CORP: BLOCKING IE TELEMETRY & EDGE SNITCHES
echo ===================================================
echo.

echo [1/2] Blocking outbound internet traffic for Internet Explorer...
netsh advfirewall firewall add rule name="SIC-Corp-Block-IE-Outbound" program="%ProgramFiles%\Internet Explorer\iexplore.exe" action=block dir=out enable=yes profile=any
netsh advfirewall firewall add rule name="SIC-Corp-Block-IE-Outbound-x86" program="%ProgramFiles(x86)%\Internet Explorer\iexplore.exe" action=block dir=out enable=yes profile=any

echo [2/2] Blocking inbound telemetry hooks...
netsh advfirewall firewall add rule name="SIC-Corp-Block-IE-Inbound" program="%ProgramFiles%\Internet Explorer\iexplore.exe" action=block dir=in enable=yes profile=any

echo.
echo ===================================================
echo [SUCCESS] Bill Gates has been successfully blinded. 
echo ===================================================
pause
