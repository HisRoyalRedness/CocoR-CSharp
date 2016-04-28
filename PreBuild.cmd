@echo off
echo === PreBuild
setlocal

set ProjDir=%~1
set Config=%~2

echo ProjDir:     %ProjDir%
echo Config:      %Config%

pushd "%ProjDir%"

rem Get the latest executable and frame files
copy /y "%ProjDir%Deploy\Coco.exe" "%ProjDir%"

"%ProjDir%Deploy\Coco.exe" Coco.ATG -namespace at.jku.ssw.Coco -frames "%ProjDir%Deploy" -trace FJSX -symnames