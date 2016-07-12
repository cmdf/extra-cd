:: Look what you're doing to me.
:: I'm utterly at your whim.
:: : Pointer Sisters (Automatic)
@echo off
setlocal enabledelayedexpansion

:: prepare
set d=%APPDATA%\0rez\ocd
if not exist %d% mkdir %d%

:: options
set a="%*"
set b=%a:~1,-1%
set i=%b:"=%
set c=%i:~0,1%
set f=%d%\%i:~1%.ini
if "%i%"=="" goto :lend
if "%i%"=="-" endlocal & popd & goto :lls
if "%i%"=="." endlocal & pushd . & goto :lls
if "%c%"=="+" echo %cd% > "%f%" & goto :lend
if "%c%"=="-" del "%f%" & goto :lend
if "%c%"=="=" for /f "delims=" %%a in ('type "%f%" 2^>NUL') do endlocal & pushd "%%~a" & goto :lls
endlocal & pushd "%i%"

:: list directory
:lls
ls --color --group-directories-first
echo.

:lend
