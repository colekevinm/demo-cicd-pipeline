@echo off
echo Deploying to DEV environment...
ping 127.0.0.1 -n 3 > nul
echo Deployment to DEV completed successfully.
exit /b 0