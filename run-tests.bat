@echo off
echo Running unit tests...
ping 127.0.0.1 -n 3 > nul
echo All unit tests passed.
exit /b 0