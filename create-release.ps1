# GitHub Release Creator
# Requires GitHub CLI (gh)

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  Create GitHub Release - Automated" -ForegroundColor Cyan
Write-Host "  FiveM Rockstar Unlink Tool v1.0.0" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Check if gh CLI is installed
try {
    gh --version | Out-Null
    Write-Host "[?] GitHub CLI ?ã ???c cài ??t" -ForegroundColor Green
} catch {
    Write-Host "[X] GitHub CLI ch?a ???c cài ??t!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Cài ??t GitHub CLI:" -ForegroundColor Yellow
    Write-Host "1. T?i t?i: https://cli.github.com/" -ForegroundColor White
    Write-Host "2. Ho?c dùng winget: winget install --id GitHub.cli" -ForegroundColor White
    Write-Host ""
    $manual = Read-Host "B?n mu?n t?o Release th? công? (Y/N)"
    
    if ($manual -eq "Y" -or $manual -eq "y") {
        Write-Host ""
        Write-Host "H??ng d?n t?o Release th? công:" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "1. Truy c?p: https://github.com/YOUR-USERNAME/FiveMRockstarUnlinkTool/releases/new" -ForegroundColor White
        Write-Host "2. Tag version: v1.0.0" -ForegroundColor White
        Write-Host "3. Release title: FiveM Rockstar Unlink Tool v1.0.0" -ForegroundColor White
        Write-Host "4. Copy n?i dung t? file RELEASE_NOTES.md vào Description" -ForegroundColor White
        Write-Host "5. Upload file: FiveMRockstarUnlinkTool\bin\Release\FiveMRockstarUnlinkTool.exe" -ForegroundColor White
        Write-Host "6. Click 'Publish release'" -ForegroundColor White
        Write-Host ""
        
        $openRelease = Read-Host "M? trang t?o Release? (Y/N)"
        if ($openRelease -eq "Y" -or $openRelease -eq "y") {
            $username = Read-Host "Nh?p GitHub username"
            Start-Process "https://github.com/$username/FiveMRockstarUnlinkTool/releases/new"
            explorer "FiveMRockstarUnlinkTool\bin\Release"
        }
    }
    
    Read-Host "Nh?n Enter ?? thoát"
    exit 1
}

Write-Host ""
Write-Host "[INFO] Ki?m tra ??ng nh?p GitHub..." -ForegroundColor Yellow
$authStatus = gh auth status 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host "[X] Ch?a ??ng nh?p GitHub CLI!" -ForegroundColor Red
    Write-Host ""
    Write-Host "??ng nh?p GitHub CLI:" -ForegroundColor Yellow
    Write-Host "Ch?y l?nh: gh auth login" -ForegroundColor White
    Write-Host ""
    
    $login = Read-Host "B?n có mu?n ??ng nh?p ngay bây gi?? (Y/N)"
    if ($login -eq "Y" -or $login -eq "y") {
        gh auth login
    } else {
        Read-Host "Nh?n Enter ?? thoát"
        exit 1
    }
}

Write-Host "[?] ?ã ??ng nh?p GitHub CLI" -ForegroundColor Green
Write-Host ""

# Get repository info
$repoUrl = git config --get remote.origin.url

if ([string]::IsNullOrWhiteSpace($repoUrl)) {
    Write-Host "[X] Không tìm th?y Git repository!" -ForegroundColor Red
    Write-Host "Vui lòng ch?y script push-to-github.ps1 tr??c." -ForegroundColor Yellow
    Read-Host "Nh?n Enter ?? thoát"
    exit 1
}

Write-Host "[INFO] Repository: $repoUrl" -ForegroundColor Cyan
Write-Host ""

# Check if release file exists
$releaseBinary = "FiveMRockstarUnlinkTool\bin\Release\FiveMRockstarUnlinkTool.exe"

if (-not (Test-Path $releaseBinary)) {
    Write-Host "[X] Không tìm th?y file Release!" -ForegroundColor Red
    Write-Host "???ng d?n: $releaseBinary" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Vui lòng build Release version tr??c:" -ForegroundColor Yellow
    Write-Host "1. M? Visual Studio" -ForegroundColor White
    Write-Host "2. Ch?n Release configuration" -ForegroundColor White
    Write-Host "3. Build -> Build Solution" -ForegroundColor White
    Read-Host "Nh?n Enter ?? thoát"
    exit 1
}

Write-Host "[?] File Release ?ã s?n sàng: $releaseBinary" -ForegroundColor Green
Write-Host ""

# Create release
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  T?O GITHUB RELEASE" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

$version = "v1.0.0"
$title = "FiveM Rockstar Unlink Tool v1.0.0"

Write-Host "Version: $version" -ForegroundColor White
Write-Host "Title: $title" -ForegroundColor White
Write-Host "Binary: $releaseBinary" -ForegroundColor White
Write-Host ""

$confirm = Read-Host "Xác nh?n t?o Release? (Y/N)"

if ($confirm -eq "Y" -or $confirm -eq "y") {
    Write-Host ""
    Write-Host "[INFO] ?ang t?o Release..." -ForegroundColor Yellow
    
    # Read release notes
    $releaseNotes = Get-Content "RELEASE_NOTES.md" -Raw
    
    # Create release using GitHub CLI
    try {
        gh release create $version `
            $releaseBinary `
            --title $title `
            --notes $releaseNotes `
            --latest
        
        if ($LASTEXITCODE -eq 0) {
            Write-Host ""
            Write-Host "============================================" -ForegroundColor Green
            Write-Host "  ? RELEASE ?Ã ???C T?O THÀNH CÔNG!" -ForegroundColor Green
            Write-Host "============================================" -ForegroundColor Green
            Write-Host ""
            Write-Host "Release URL s? ???c m? trong trình duy?t..." -ForegroundColor Cyan
            
            Start-Sleep -Seconds 2
            
            # Get repo owner and name
            $repoInfo = gh repo view --json nameWithOwner -q .nameWithOwner
            $releaseUrl = "https://github.com/$repoInfo/releases/tag/$version"
            
            Start-Process $releaseUrl
        } else {
            Write-Host ""
            Write-Host "[X] Có l?i khi t?o Release!" -ForegroundColor Red
        }
    } catch {
        Write-Host ""
        Write-Host "[X] L?i: $_" -ForegroundColor Red
        Write-Host ""
        Write-Host "Th? t?o Release th? công:" -ForegroundColor Yellow
        Write-Host "gh release create $version $releaseBinary --title `"$title`" --notes-file RELEASE_NOTES.md" -ForegroundColor White
    }
} else {
    Write-Host "?ã h?y t?o Release." -ForegroundColor Yellow
}

Write-Host ""
Read-Host "Nh?n Enter ?? thoát"
