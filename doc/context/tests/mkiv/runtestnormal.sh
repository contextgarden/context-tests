#! /bin/sh

mtxrun  --generate $1
context --make en $1
mtxrun  --script font --reload --force
mtxrun  --script testsuite --process --pattern=**/*.tex --purge $1

cat testsuite-process.lua
