@echo off

rem echo %path%

mtxrun  --script testsuite --parallel --pattern=**/*.tex --purge --squid
REM ~ mtxrun  --script testsuite --parallel --pattern=**/*.tex --purge
REM ~ mtxrun  --script testsuite --parallel --pattern=**/*.tex --purge --signal=signal

echo.
echo results:
echo.

type testsuite-process.lua

echo.
echo.
