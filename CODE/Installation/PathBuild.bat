@echo off
chcp 65001
setlocal enabledelayedexpansion

set n=1

:a
set "filePath=Path%n%.ini"
if not exist %filePath% goto error

<%filePath% set /p InstallPath=

if not exist "%InstallPath%" (
    md "%InstallPath%"
    echo Répertoire créé à : %InstallPath%
) else (
    echo Le répertoire %InstallPath% existe déjà.
)

set /a n+=1
echo n=%n%

goto f
:error 
echo FATAL ERROR
:f
pause
