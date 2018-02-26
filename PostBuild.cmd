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

rem Build our deploy package
echo copy Coco.exe into the Deploy folder
if not exist deploy md Deploy
copy /y "%Target%" "%ProjDir%Deploy"