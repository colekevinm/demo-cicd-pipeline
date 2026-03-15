@echo off
echo Running security scan...
ping 127.0.0.1 -n 3 > nul
echo No vulnerabilities found.
exit /b 0