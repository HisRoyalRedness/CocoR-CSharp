@echo off
echo === PostBuild
setlocal

set ProjDir=%~1
set Config=%~2
set Target=%~3

echo ProjDir:     %ProjDir%
echo Config:      %Config%
echo Target:      %Target%

pushd "%ProjDir%"

rem Copy the new Coco.exe, so we use this one next time
copy /y "%Target%" "%ProjDir%"

rem Build our deploy package
if not exist deploy md Deploy
copy /y "%Target%" "%ProjDir%Deploy"