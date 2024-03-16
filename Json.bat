@echo off
setlocal enabledelayedexpansion

set "folderPath=C:\Users\litta.VIRAL\Downloads\takeout-2"

if not exist "%folderPath%" (
    echo Folder does not exist.
    exit /b
)

cd "%folderPath%"

for /r %%i in (*.json) do (
    del "%%i"
    echo Deleted: "%%i"
)

echo Deletion complete.
pause
