@echo off

set profile="%~1%"

cd %~d0

cd %~dp0

load.bat %profile%

pause