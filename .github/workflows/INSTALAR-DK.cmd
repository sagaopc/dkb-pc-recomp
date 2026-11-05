@echo off
setlocal
cd /d "%~dp0src"
set "PATH=%~dp0ucrt64\bin;%~dp0git\cmd;%PATH%"
"%~dp0python\python.exe" -m installer.gui --game bananza --toolchain "%~dp0ucrt64" --deps "%~dp0ucrt64" --ninja "%~dp0ucrt64\bin\ninja.exe" --dll-dir "%~dp0ucrt64\bin" --translator "%~dp0bin\totk_xlate.exe"
if errorlevel 1 pause
