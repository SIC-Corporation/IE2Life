@echo off
title SIC Corp - IE2Life Resurrector
echo ===================================================
echo       SIC CORP: INTERNET EXPLORER RESURRECTOR
echo ===================================================
echo.

echo [1/3] Forcing high-end browser emulation in registry...
reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION" /v "iexplore.exe" /t REG_DWORD /d "11001" /f

echo [2/3] Blocking Edge auto-redirect helper hooks...
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "DoNotShow IEtoEdge" /t REG_DWORD /d "1" /f

echo [3/3] Creating native desktop launcher shortcut...
set "shortcut=%userprofile%\Desktop\Internet Explorer (Resurrected).vbs"
echo CreateObject("InternetExplorer.Application").Visible = True > "%shortcut%"

echo.
echo ===================================================
echo [SUCCESS] IE has been patched and added to your desktop!
echo ===================================================
pause
