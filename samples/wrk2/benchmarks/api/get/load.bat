@echo off

set profile=%~1%

set cmd=crank --config load.benchmarks.yml --scenario api --load.framework net5.0 --application.framework net5.0

set "newCmd=%cmd% %profile%"

echo %newCmd%

%newCmd%

pause