@echo off
title FiveM Rockstar Unlink Tool - Quick Deploy to GitHub
color 0A

echo.
echo ================================================
echo   FIVEM ROCKSTAR UNLINK TOOL
echo   Quick Deploy to GitHub and Create Release
echo   By Mr. Vu
echo ================================================
echo.
echo.

:menu
echo Chon mot lua chon:
echo.
echo   1. Push code len GitHub (Lan dau)
echo   2. Tao Release v1.0.0 (Sau khi push)
echo   3. Mo huong dan day du
echo   4. Mo folder Release (lay file .exe)
echo   5. Mo GitHub repository
echo   0. Thoat
echo.
set /p choice=Nhap lua chon (0-5): 

if "%choice%"=="1" goto push
if "%choice%"=="2" goto release
if "%choice%"=="3" goto guide
if "%choice%"=="4" goto openrelease
if "%choice%"=="5" goto opengithub
if "%choice%"=="0" goto end
echo Lua chon khong hop le!
goto menu

:push
cls
echo.
echo ================================================
echo   PUSH CODE LEN GITHUB
echo ================================================
echo.
powershell -ExecutionPolicy Bypass -File push-to-github.ps1
pause
goto menu

:release
cls
echo.
echo ================================================
echo   TAO GITHUB RELEASE
echo ================================================
echo.
powershell -ExecutionPolicy Bypass -File create-release.ps1
pause
goto menu

:guide
cls
echo.
echo ================================================
echo   MO HUONG DAN
echo ================================================
echo.
notepad GITHUB_UPLOAD_GUIDE.md
goto menu

:openrelease
cls
echo.
echo ================================================
echo   MO FOLDER RELEASE
echo ================================================
echo.
explorer FiveMRockstarUnlinkTool\bin\Release
goto menu

:opengithub
cls
echo.
echo ================================================
echo   MO GITHUB
echo ================================================
echo.
set /p username=Nhap GitHub username: 
if "%username%"=="" (
    echo Username khong duoc de trong!
    pause
    goto menu
)
start https://github.com/%username%/FiveMRockstarUnlinkTool
goto menu

:end
echo.
echo Cam on da su dung! Goodbye!
timeout /t 2 >nul
exit
