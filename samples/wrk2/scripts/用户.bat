@echo off
set /p envContent=<.\env
set /p env=<%envContent%

cd ../

echo 当前盘符："%~d0"
echo 当前盘符和路径："%~dp0"
echo 当前批处理全路径："%~f0"
echo 当前盘符和路径的短文件名格式："%~sdp0"
echo 当前CMD默认目录："%cd%"

start %cd%\benchmarks\api\add\guide.bat "--profile crankAgent1 %env% --description "用户页面-获取用户详情""
start %cd%\benchmarks\api\add\guide.bat "--profile crankAgent2 %env% --description "用户页面-添加用户""
pause