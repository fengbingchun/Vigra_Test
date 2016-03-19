@echo off
if [%1] NEQ [] (
    set CONFIGURATION=%1
) else (
    set CONFIGURATION=Release
)

echo Testing configuration '%CONFIGURATION%'

set PATH=%PATH%
cd E:\GitCode\Vigra_Test\build\test\unsupervised

cmd /c "E:\GitCode\Vigra_Test\build\test\unsupervised\%CONFIGURATION%\test_unsupervised.exe"
IF %ERRORLEVEL% NEQ 0 (
    rem this is the Windows version of 'touch'
    copy /b testsuccess.cxx+,, > NUL
    exit %ERRORLEVEL% 
)
