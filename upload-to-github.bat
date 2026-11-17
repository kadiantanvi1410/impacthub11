@echo off
title Push ImpactHub to GitHub
cd /d "%~dp0"
echo ========================================================
echo    Push ImpactHub to Your GitHub Repository
echo ========================================================
echo.
echo 1. Create a new empty repository at: https://github.com/new
echo    (Do NOT check "Add a README" or "Add .gitignore")
echo.
set /p REPO_URL="Paste your GitHub repository URL (e.g. https://github.com/USERNAME/repo-name.git): "
if "%REPO_URL%"=="" goto end

echo.
echo Linking remote repository...
git remote remove origin 2>nul
git remote add origin %REPO_URL%
git branch -M main

echo.
echo Pushing code to main branch...
git push -u origin main

echo.
echo ========================================================
echo   Code pushed successfully!
echo.
echo   To enable FREE live hosting on GitHub Pages:
echo   1. Go to your repo on GitHub: Settings -> Pages
echo   2. Under "Build and deployment", set Source to:
echo      "GitHub Actions"
echo   3. Your site will automatically go LIVE!
echo ========================================================
:end
pause
