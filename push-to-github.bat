@echo off
echo ============================================
echo   FiveM Rockstar Unlink Tool - GitHub Setup
echo   By Mr. Vu
echo ============================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Git chua duoc cai dat!
    echo Vui long tai Git tai: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [1/6] Initializing Git repository...
git init

echo [2/6] Adding all files...
git add .

echo [3/6] Creating first commit...
git commit -m "Initial commit: FiveM Rockstar Unlink Tool v1.0.0"

echo.
echo [4/6] Ready to push to GitHub!
echo.
echo Hay lam theo cac buoc sau:
echo.
echo 1. Truy cap: https://github.com/new
echo 2. Repository name: FiveMRockstarUnlinkTool
echo 3. Description: Tool xoa lien ket tai khoan Rockstar khoi FiveM
echo 4. Chon Public
echo 5. KHONG chon "Initialize this repository with a README"
echo 6. Click "Create repository"
echo.
echo Sau do, chay cac lenh sau (thay YOUR-USERNAME):
echo.
echo git remote add origin https://github.com/onlyvu/FiveM-Rockstar-Unlink-Tool.git
echo git branch -M main
echo git push -u origin main
echo.
pause

:menu
echo.
echo Ban da tao repository tren GitHub chua? (Y/N)
set /p answer=Nhap lua chon: 
if /i "%answer%"=="Y" goto push
if /i "%answer%"=="N" goto end
echo Lua chon khong hop le!
goto menu

:push
echo.
set /p username=Nhap GitHub username cua ban: 
if "%username%"=="" (
    echo Username khong duoc de trong!
    goto push
)

echo.
echo [5/6] Adding remote repository...
git remote add origin https://github.com/%username%/FiveM-Rockstar-Unlink-Tool.git

echo [6/6] Pushing to GitHub...
git branch -M main
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ============================================
    echo   THANH CONG! Repository da duoc push len GitHub
    echo   https://github.com/%username%/FiveM-Rockstar-Unlink-Tool.git
    echo ============================================
    echo.
    echo Buoc tiep theo: TAO RELEASE
    echo.
    echo 1. Truy cap: https://github.com/%username%/FiveM-Rockstar-Unlink-Tool.git
    echo 2. Tag version: v1.0.0
    echo 3. Release title: FiveM Rockstar Unlink Tool v1.0.0
    echo 4. Description: Phien ban dau tien cua tool
    echo 5. Upload file: FiveMRockstarUnlinkTool\bin\Release\FiveMRockstarUnlinkTool.exe
    echo 6. Click "Publish release"
) else (
    echo.
    echo [ERROR] Co loi khi push len GitHub!
    echo Vui long kiem tra lai thong tin va thu lai.
)

:end
echo.
pause
