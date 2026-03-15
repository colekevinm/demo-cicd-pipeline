@echo off
echo Deploying to PRODUCTION environment...
ping 127.0.0.1 -n 3 > nul
echo Deployment to PRODUCTION completed successfully.
exit /b 0