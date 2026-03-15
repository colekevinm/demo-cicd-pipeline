@echo off
echo Deploying to STAGING environment...
ping 127.0.0.1 -n 3 > nul
echo Deployment to STAGING completed successfully.
exit /b 0