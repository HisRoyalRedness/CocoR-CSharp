@echo off
echo === PreBuild
setlocal

set ProjDir=%~1
set Config=%~2

echo ProjDir:     %ProjDir%
echo Config:      %Config%

pushd "%ProjDir%"

echo Run Coco/R
"%ProjDir%Deploy\Coco.exe" Coco.ATG -namespace at.jku.ssw.Coco -frames "%ProjDir%Deploy" -trace FJSX -symnames