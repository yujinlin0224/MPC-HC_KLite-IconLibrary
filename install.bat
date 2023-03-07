@echo off

if exist "%ProgramFiles%\MPC-HC" (
  copy /y "%~dp0\mpciconlib.dll" "%ProgramFiles%\MPC-HC"
)

if exist "%ProgramFiles(x86)%\MPC-HC" (
  copy /y "%~dp0\mpciconlib.dll" "%ProgramFiles(x86)%\MPC-HC"
)

if exist "%ProgramFiles%\K-Lite Codec Pack\MPC-HC" (
  copy /y "%~dp0\mpciconlib.dll" "%ProgramFiles%\K-Lite Codec Pack\MPC-HC"
)

if exist "%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC64" (
  copy /y "%~dp0\mpciconlib.dll" "%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC64"
)
