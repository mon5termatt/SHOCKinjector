@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=D:\mcbik\Desktop\ALL\Menus\Shock\SHOCK Injector.exe
REM BFCPEICON=D:\mcbik\Desktop\ALL\Menus\Shock\icon.ico
REM BFCPEICONINDEX=1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=4.2.0.0
REM BFCPEVERPRODUCT=SHOCK Injector
REM BFCPEVERDESC=MON5TERMATT#9999
REM BFCPEVERCOMPANY=Clark IT
REM BFCPEVERCOPYRIGHT=fuckem
REM BFCPEEMBED=D:\mcbik\Desktop\ALL\Menus\Shock\Injector.exe
REM BFCPEEMBED=D:\mcbik\Desktop\ALL\Menus\Shock\logo
REM BFCPEOPTIONEND
@ECHO ON
@echo off
:start
rem CursorHide
set menu=SHOCK
set /p delay= < delay
IF EXIST ".\delay" (goto start2) ELSE (goto delay)
IF EXIST ".\path" (goto start2) ELSE (goto set)
:start2
mode con:cols=100 lines=55
title %menu% INJECTOR!
type %myfiles%\logo && echo.
IF EXIST ".\%menu%.dll" (goto launch) ELSE (goto WARN)
:warn 
echo.[31m       The %menu% DLL wasnt found, please select the file.[0m
rem BrowseFiles
COPY %result% .
REN %result%.dll %menu%.dll
cls
goto start
:launch
copy .\%menu%.dll %myfiles%
cls
type %myfiles%\logo && echo.
echo.[31m       Searching For Game Process[0m
tasklist /FI "IMAGENAME eq GTA5.exe" 2>NUL | find /I /N "GTA5.exe">NUL
if "%ERRORLEVEL%"=="0" goto found
echo.[31m       GTA not Found, Would you like to Launch it?[0m
choice /C:YN /N /M "[31m       (Y/N)[0m"
if errorlevel 2 goto check2
if errorlevel 1 goto GTA
:GTA
cls
type %myfiles%\logo && echo.
echo.[31m       Social Club?[0m
choice /C:YNC /N /M "[31m       (Y/N/C)[0m"
if errorlevel 3 goto:start
if errorlevel 2 goto:GTA2
if errorlevel 1 goto:Socialclub
:GTA2
cls
type %myfiles%\logo && echo.
echo.[31m       Steam?[0m
choice /C:YNC /N /M "[31m       (Y/N/C)[0m"
if errorlevel 3 goto:start
if errorlevel 2 goto:GTA3
if errorlevel 1 goto:Steam
:GTA3
cls
type %myfiles%\logo && echo.
echo.[31m       Epic Games?[0m
choice /C:YNC /N /M "[31m       (Y/N/C)[0m"
if errorlevel 3 goto:start
if errorlevel 2 goto:GTA
if errorlevel 1 goto:epic




:Socialclub
echo.[31m       Using Social Club Version[0m
set /p gta= < path
cd /D %gta%
start PlayGTAV.exe
goto launch2

:Steam
echo.[31m       Using Steam Version[0m
start steam://rungameid/271590
cls
goto launch2

:epic
echo.[31m       Epic Games Version Launched[0m
start com.epicgames.launcher://apps/9d2d0eb64d5c44529cece33fe2a46482?action=launch&silent=true
cls
goto launch2
:check2
echo.[31m       Would you like to continue to injection anyways?[0m
choice /C:YN /N /M "[31m       (Y/N)[0m"
if errorlevel 2 exit
if errorlevel 1 goto launch2
:launch2
cls
type %myfiles%\logo && echo.
echo.[31m       Searching For Game Process
tasklist /FI "IMAGENAME eq GTA5.exe" 2>NUL | find /I /N "GTA5.exe">NUL
if "%ERRORLEVEL%"=="0" goto found
:wait2
echo.[31m       Waiting for GTA.EXE
timeout 2 >nul
cls
goto launch2
:found
cls
mode con:cols=100 lines=55
title Injecting... Do NOT close...
set /a delay=delay-=1
type %myfiles%\logo && echo.
echo.[32m       %delay% Second(s) remaining until injection[0m  
timeout 1 >nul
if %delay%==0 (
goto found2
) else (
goto found
)
timeout 1 >nul
cls
:found2
cls
start %myfiles%\Injector.exe --process-name GTA5.exe --inject %menu%.dll
mode con:cols=100 lines=55
timeout 1 >nul
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@========================================================@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@===/                                                       /@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@/                                                          /@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@/                                                          /@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@/                                                          /@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@/                                                          /@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@/                                                          /@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@/                __________________________________________/@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@/                /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@/               /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@/               `==========================================/@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@/                                                          /@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@/                                                          /@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@/                                                           /@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@/                                                           /@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@/                                                           /@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@/_________________________________________                  /@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\                 /@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/                /@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@/========================================`                /@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@/                                                         /@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@/                                                          /@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@/                                                          /@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@/                                                          /@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@/                                                          /@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@/                                                        __/@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@/                                                    ____/@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@/___________________________________________________/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       [======================================================================================][0m 
echo.[32m       [==== DONE LOADING DONE LOADING DONE LOADING DONE LOADING DONE LOADING DONE LOADING ===][0m 
echo.[32m       [======================================================================================][0m 
timeout 10 >nul
exit
:set
cls
echo.[32m       Enter Your GTA Directory:[0m 
rem BrowseFolder
echo.%result%>path
:checkfile
set /p check= < path
IF /I "%check%"=="0" (
    echo.[31m       File Not Set[0m && timeout 2 >nul && goto set
)
goto start

:delay
cls
set /p delay="[32m       Injection Delay Time: [0m "
echo.%delay%>delay
:checkdelay
set /p check= < delay
IF /I "%check%"=="0" (
    echo.[31m       Not Valid Amount[0m && timeout 2 >nul && goto delay
)
goto start