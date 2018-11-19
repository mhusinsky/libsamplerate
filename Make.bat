@echo off

if "%1"=="check" GOTO CHECK
if "%1"=="clean" GOTO CLEAN
if "%1"=="lib" GOTO LIB

copy /y Win32\config.h src\config.h
copy /y Win32\unistd.h examples\unistd.h

nmake -f Win32\Makefile.msvc
goto END


:CHECK
nmake -f Win32\Makefile.msvc check
goto END

:CLEAN
nmake -f Win32\Makefile.msvc clean
goto END

:LIB
nmake -f Win32\Makefile.msvc lib
goto END

:END

