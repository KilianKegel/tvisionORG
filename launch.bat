@echo off
cmake . -B ./build
if %ERRORLEVEL% == 0 goto OKAY
echo.
echo ^   ^FAILED TO RUN CMAKE.
echo ^   ^CMAKE not in path or not installed...
echo ^   ^Run LAUNCH.BAT from within a CMAKE-enabled "X64 NATIVE TOOLS COMMAND PROMPT FOR VS 2022"
echo.
pause
goto EOF
:OKAY
build\tvision.sln
:EOF