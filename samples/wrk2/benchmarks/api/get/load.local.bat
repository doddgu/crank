@echo off
set /p title=<.\defaultTitle
set profile="--profile local --profile crankAgent1 --description "%title%" --profile defaultParamLocal"
load.bat %profile%
pause