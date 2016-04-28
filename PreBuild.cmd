@echo off
echo === PreBuild
setlocal

set ProjDir=%~1
set Config=%~2

echo ProjDir:     %ProjDir%
echo Config:      %Config%

pushd "%ProjDir%"

copy /y "%ProjDir%Deploy\Coco.exe" "%ProjDir%""

coco Coco.ATG -namespace at.jku.ssw.Coco