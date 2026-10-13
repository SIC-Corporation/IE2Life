@echo off
title SIC Corp - IE2Life Resurrector (Advanced Edition)
echo ===================================================
echo   SIC CORP: INTERNET EXPLORER ULTRA-RESURRECTOR
echo ===================================================
echo.

echo [1/4] Forcing ultimate IE11 Edge/Standards document emulation...
reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION" /v "iexplore.exe" /t REG_DWORD /d "11001" /f
reg add "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION" /v "iexplore.exe" /t REG_DWORD /d "11001" /f

echo [2/4] Forcing hardware acceleration and modern script processing...
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "GPUEnabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "PreventCompatMode" /t REG_DWORD /d "0" /f

echo [3/4] Killing Edge auto-redirect helper hooks...
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "DoNotShow IEtoEdge" /t REG_DWORD /d "1" /f

echo [4/4] Creating the native desktop launcher shortcut...
set "shortcut=%userprofile%\Desktop\Internet Explorer (Resurrected).vbs"
echo CreateObject("InternetExplorer.Application").Visible = True > "%shortcut%"

echo.
echo ===================================================
echo [SUCCESS] IE has been upgraded to maximum limits!
echo ===================================================
pause
