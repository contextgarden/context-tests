@echo off

REM ~ echo %path%

mtxrun  --generate %1
context --make en %1
mtxrun  --script font --reload --force
mtxrun  --script testsuite --parallel --pattern=**/*.tex --purge %1

echo.
echo results:
echo.

type testsuite-process.lua

echo.
echo.
