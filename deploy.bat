@echo off
echo =======================================================
echo Initiating Automated Deployment to GitHub Pages...
echo =======================================================
echo.
echo Please ensure that you have created the "portfolio" repository on your GitHub account (mcv2468).
echo GitHub will now prompt you for authorization to push the code.
echo.

git remote add origin https://github.com/mcv2468/portfolio.git 2>nul
git branch -M main
git push -u origin main

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Push failed. Make sure you created the repo at https://github.com/mcv2468/portfolio and have authorization.
    pause
    exit /b %errorlevel%
)

echo.
echo [SUCCESS] Source code pushed to main. Now building and deploying to GitHub Pages...
call npx ng deploy --base-href /portfolio/

echo.
echo [SUCCESS] Deployment is fully complete! Your site will be live soon.
pause
