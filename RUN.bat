@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=D:\mcbik\Desktop\ALL\Menus\Shock\SHOCK Injector.exe
REM BFCPEICON=C:\Icons\9feca6582f22e9a7.ico
REM BFCPEICONINDEX=1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=2.0.0.2
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
IF EXIST ".\LAUNCH.ini" (goto start2) ELSE (goto set)
:start2
mode con:cols=100 lines=55
title SHOCK INJECTOR!
type %myfiles%\logo && echo.
IF EXIST ".\SHOCK.dll" (goto launch) ELSE (goto WARN)
:warn 
echo.[31m       The Shock DLL wasnt Found, please Select the file.[0m
rem BrowseFiles
COPY %result% .
REN *.dll SHOCK.dll
cls
goto start
:launch
copy .\SHOCK.dll %myfiles%
cls
type %myfiles%\logo && echo.
echo.Searching For Game Process
tasklist /FI "IMAGENAME eq GTA5.exe" 2>NUL | find /I /N "GTA5.exe">NUL
if "%ERRORLEVEL%"=="0" goto found
echo.GTA not Found, Would you like to Launch it?
choice /C:YN /N /M "(Y/N)"
if errorlevel 2 goto check2
if errorlevel 1 goto startgta
:startgta
set /p gta= < LAUNCH.ini
SET drive=%gta:~0,2%
%drive%
cd %gta%
start PlayGTAV.exe
goto launch2
:check2
cls
type %myfiles%\logo && echo.
echo.Would you like to continue to injection anyways?
choice /C:YN /N /M "(Y/N)"
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
title Injecting... Do NOT close...
type %myfiles%\logo && echo.
echo.[32m       [                                                                                      ][0m 
echo.[32m       [                                                                                      ][0m 
echo.[32m       [                                                                                      ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [=====                                                                                 ][0m 
echo.[32m       [=====                                                                                 ][0m 
echo.[32m       [=====                                                                                 ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [=========                                                                             ][0m 
echo.[32m       [=========                                                                             ][0m 
echo.[32m       [=========                                                                             ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [=============                                                                         ][0m 
echo.[32m       [=============                                                                         ][0m 
echo.[32m       [=============                                                                         ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [==================                                                                    ][0m 
echo.[32m       [==================                                                                    ][0m 
echo.[32m       [==================                                                                    ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [======================                                                                ][0m 
echo.[32m       [======================                                                                ][0m 
echo.[32m       [======================                                                                ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [==========================                                                            ][0m 
echo.[32m       [==========================                                                            ][0m 
echo.[32m       [==========================                                                            ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [===============================                                                       ][0m 
echo.[32m       [===============================                                                       ][0m 
echo.[32m       [===============================                                                       ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [===================================                                                   ][0m 
echo.[32m       [===================================                                                   ][0m 
echo.[32m       [===================================                                                   ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [========================================                                              ][0m 
echo.[32m       [========================================                                              ][0m 
echo.[32m       [========================================                                              ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [============================================                                          ][0m 
echo.[32m       [============================================                                          ][0m 
echo.[32m       [============================================                                          ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [=================================================                                     ][0m 
echo.[32m       [=================================================                                     ][0m 
echo.[32m       [=================================================                                     ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [=====================================================                                 ][0m 
echo.[32m       [=====================================================                                 ][0m 
echo.[32m       [=====================================================                                 ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [=========================================================                             ][0m 
echo.[32m       [=========================================================                             ][0m 
echo.[32m       [=========================================================                             ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [==============================================================                        ][0m 
echo.[32m       [==============================================================                        ][0m 
echo.[32m       [==============================================================                        ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [==================================================================                    ][0m 
echo.[32m       [==================================================================                    ][0m 
echo.[32m       [==================================================================                    ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [======================================================================                ][0m 
echo.[32m       [======================================================================                ][0m 
echo.[32m       [======================================================================                ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [===========================================================================           ][0m 
echo.[32m       [===========================================================================           ][0m 
echo.[32m       [===========================================================================           ][0m
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [==============================================================================        ][0m 
echo.[32m       [==============================================================================        ][0m 
echo.[32m       [==============================================================================        ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [==================================================================================    ][0m 
echo.[32m       [==================================================================================    ][0m 
echo.[32m       [==================================================================================    ][0m 
timeout 1 >nul
cls
type %myfiles%\logo && echo.
echo.[32m       [======================================================================================][0m 
echo.[32m       [======================================================================================][0m 
echo.[32m       [======================================================================================][0m 
timeout 1 >nul
cls
start %myfiles%\Injector.exe --process-name GTA5.exe --inject %menu%.dll
timeout 1 >nul
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@$zz=,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@gv.                                                        D@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@Q                                                          h@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@X`                                                          z@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@O`                                                          *@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@Q'                                                          ,#@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@!                                                          `g@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@)                                                         _iB@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@w                0000000000000000000000000000000000000000$#@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@D`               -#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@$-               `j00000$00000000000000000000000000000000000#@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@B-                                                          ,#@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@/                                                          `$@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@i                                                           H@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@K                                                           }@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@Q`                                                          =@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@Q_                                                          !B@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@8MMMZZMMMZZZZZZZMMMZZZMMZZZZZZZZZZZZZZZZZZV                'Q@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#,                O@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@@@@B$00000000000000000000000000000000000000D/                k@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@@#u,                                                         *@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@@Q.                                                          :#@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@#_                                                          "B@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@@r                                                          `Q@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@@)                                                          '0@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@@k                                                          r#@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@$`                                                       ')0@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
echo.[32m       @@@/_________________,______________________________,_,,~vX8@@@@@@@@@@@@@@@@@@@@@@@@@@@@[0m  
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
echo.Enter Your GTA Directory:
rem BrowseFolder
echo.%result%>LAUNCH.ini
:checkfile
set /p check= < LAUNCH.ini
IF /I "%check%"=="0" (
    echo File Not Set && timeout 2 >nul && goto set
)
goto start