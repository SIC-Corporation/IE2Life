@echo off
setlocal enabledelayedexpansion
title SIC Corp - IE2Life ULTRA-RESURRECTOR (SCOL-1.0 Licensed)
color 0A
mode con cols=100 lines=35

echo =========================================================================
echo       ____ ____ ____    ____ ____ ____ ___    
echo      ^| [cite: ] ^| [cite: ] ^| [cite: ] ^|  ^| [cite: ] ^| [cite: ] ^| [cite: ] ^| [cite: ] \   
echo      ^|___^|___^|___^|  ^|___^|___^|___^|___^|   
echo =========================================================================
echo SIC CORP: INTERNET EXPLORER RESURRECTION PROTOCOL INITIATED... [v1.3]
echo SCOL-1.0 LICENSE APPLIED - USE AT YOUR OWN SKILL ISSUE RISKS...
echo.

:: -- HACKER AURA BLOCK --
set /a lines=%random% %% 10 + 25
for /L %%i in (1,1,%lines%) do (
    set /a a=%random% %% 2
    set /a b=%random% %% 10000
    if !a!==1 (echo [DECRYPTING SEGMENT !b!]: KERNEL_HOOK_BLOCK_BYPASS=!random!) else (echo [PATCHING]: EDGE_REDIRECT_DLL_INJECTED_AT=!random!)
    timeout /t 0 >nul
)
echo.

echo [+] TARGETING: Native IE11 Standards Modes (11001)...
echo [+] APPLYING: System-Level Registry Tweak (HKLM)...
reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION" /v "iexplore.exe" /t REG_DWORD /d "11001" /f >nul
timeout /t 1 >nul

echo [+] APPLYING: User-Level Registry Tweak (HKCU)...
reg add "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION" /v "iexplore.exe" /t REG_DWORD /d "11001" /f >nul
timeout /t 1 >nul

echo [+] DISABLING: IEtoEdge Redirection Hooks (Anti-Snitch Protocol)...
reg add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "DoNotShow IEtoEdge" /t REG_DWORD /d "1" /f >nul
timeout /t 1 >nul

:: -- THE LOADING BAR PROTOCOL --
echo.
echo [FINALIZING RESURRECTION SEQUENCE]...
<nul set /p "=Progress: ["
for /L %%i in (1,1,40) do (
    <nul set /p "=█"
    timeout /t 0 /nobreak >nul
    set /a r=!random! %% 10
    if !r!==0 timeout /t 1 >nul
)
echo [cite: ] KLAAR!]

echo [+] GENEREER JE LOKALE LAUNCHER SNELKOPPELING...
set "shortcut=%userprofile%\Desktop\Internet Explorer (Resurrected).vbs"
echo CreateObject("InternetExplorer.Application").Visible = True > "%shortcut%"

echo.
echo =========================================================================
echo [ite: ] ERRESURRECTIE GESLAAGD!] IE IS NU ACTIEF OP JE BUREAUBLAD!
echo Start IE opnieuw op en geniet van je 2005-vibe, Roy!
echo =========================================================================
echo SIC Corp - We bring dead code back. Because we can.
pause >nul
