@echo off
if [%1] NEQ [] (
    set CONFIGURATION=%1
) else (
    set CONFIGURATION=Release
)

echo Testing configuration '%CONFIGURATION%'

set PATH=E:\GitCode\Vigra_Test\build\src\impex\%CONFIGURATION%;%PATH%
cd E:\GitCode\Vigra_Test\build\test\impex

cmd /c "E:\GitCode\Vigra_Test\build\test\impex\%CONFIGURATION%\test_impex.exe"
IF %ERRORLEVEL% NEQ 0 (
    rem this is the Windows version of 'touch'
    copy /b testsuccess.cxx+,, > NUL
    exit %ERRORLEVEL% 
)
