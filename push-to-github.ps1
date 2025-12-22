# FiveM Rockstar Unlink Tool - GitHub Upload Script
# By Mr. V?

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  FiveM Rockstar Unlink Tool - GitHub Setup" -ForegroundColor Cyan
Write-Host "  By Mr. V?" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Check if git is installed
try {
    git --version | Out-Null
} catch {
    Write-Host "[ERROR] Git ch?a ???c cài ??t!" -ForegroundColor Red
    Write-Host "Vui lòng t?i Git t?i: https://git-scm.com/download/win" -ForegroundColor Yellow
    Read-Host "Nh?n Enter ?? thoát"
    exit 1
}

Write-Host "[1/6] Initializing Git repository..." -ForegroundColor Green
git init

Write-Host "[2/6] Adding all files..." -ForegroundColor Green
git add .

Write-Host "[3/6] Creating first commit..." -ForegroundColor Green
git commit -m "Initial commit: FiveM Rockstar Unlink Tool v1.0.0"

Write-Host ""
Write-Host "[4/6] Ready to push to GitHub!" -ForegroundColor Green
Write-Host ""
Write-Host "Hãy làm theo các b??c sau:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Truy c?p: https://github.com/new" -ForegroundColor White
Write-Host "2. Repository name: FiveMRockstarUnlinkTool" -ForegroundColor White
Write-Host "3. Description: Tool xóa liên k?t tài kho?n Rockstar kh?i FiveM" -ForegroundColor White
Write-Host "4. Ch?n Public" -ForegroundColor White
Write-Host "5. KHÔNG ch?n 'Initialize this repository with a README'" -ForegroundColor White
Write-Host "6. Click 'Create repository'" -ForegroundColor White
Write-Host ""

$continue = Read-Host "B?n ?ã t?o repository trên GitHub ch?a? (Y/N)"

if ($continue -eq "Y" -or $continue -eq "y") {
    $username = Read-Host "Nh?p GitHub username c?a b?n"
    
    if ([string]::IsNullOrWhiteSpace($username)) {
        Write-Host "[ERROR] Username không ???c ?? tr?ng!" -ForegroundColor Red
        Read-Host "Nh?n Enter ?? thoát"
        exit 1
    }
    
    Write-Host ""
    Write-Host "[5/6] Adding remote repository..." -ForegroundColor Green
    git remote add origin "https://github.com/$username/FiveMRockstarUnlinkTool.git"
    
    Write-Host "[6/6] Pushing to GitHub..." -ForegroundColor Green
    git branch -M main
    git push -u origin main
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host ""
        Write-Host "============================================" -ForegroundColor Green
        Write-Host "  THÀNH CÔNG! Repository ?ã ???c push lên GitHub" -ForegroundColor Green
        Write-Host "  https://github.com/$username/FiveMRockstarUnlinkTool" -ForegroundColor Cyan
        Write-Host "============================================" -ForegroundColor Green
        Write-Host ""
        Write-Host "B??c ti?p theo: T?O RELEASE" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "1. Truy c?p: https://github.com/$username/FiveMRockstarUnlinkTool/releases/new" -ForegroundColor White
        Write-Host "2. Tag version: v1.0.0" -ForegroundColor White
        Write-Host "3. Release title: FiveM Rockstar Unlink Tool v1.0.0" -ForegroundColor White
        Write-Host "4. Description: Phiên b?n ??u tiên c?a tool" -ForegroundColor White
        Write-Host "5. Upload file: FiveMRockstarUnlinkTool\bin\Release\FiveMRockstarUnlinkTool.exe" -ForegroundColor White
        Write-Host "6. Click 'Publish release'" -ForegroundColor White
        
        Write-Host ""
        $openGitHub = Read-Host "M? GitHub repository ngay bây gi?? (Y/N)"
        if ($openGitHub -eq "Y" -or $openGitHub -eq "y") {
            Start-Process "https://github.com/$username/FiveMRockstarUnlinkTool"
        }
        
        Write-Host ""
        $createRelease = Read-Host "M? trang t?o Release ngay bây gi?? (Y/N)"
        if ($createRelease -eq "Y" -or $createRelease -eq "y") {
            Start-Process "https://github.com/$username/FiveMRockstarUnlinkTool/releases/new"
            explorer "FiveMRockstarUnlinkTool\bin\Release"
        }
    } else {
        Write-Host ""
        Write-Host "[ERROR] Có l?i khi push lên GitHub!" -ForegroundColor Red
        Write-Host "Vui lòng ki?m tra l?i thông tin và th? l?i." -ForegroundColor Yellow
    }
} else {
    Write-Host "Hãy t?o repository trên GitHub tr??c, sau ?ó ch?y l?i script này." -ForegroundColor Yellow
}

Write-Host ""
Read-Host "Nh?n Enter ?? thoát"
