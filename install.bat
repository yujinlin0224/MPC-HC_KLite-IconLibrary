@echo off

if exist "%ProgramFiles%\MPC-HC\mpc-hc.exe" (
  copy /y "%~dp0\32bit\mpciconlib.dll" "%ProgramFiles%\MPC-HC"
  start "" /wait "%ProgramFiles%\MPC-HC\mpc-hc.exe" /iconsassoc
)

if exist "%ProgramFiles%\MPC-HC\mpc-hc64.exe" (
  copy /y "%~dp0\64bit\mpciconlib.dll" "%ProgramFiles%\MPC-HC"
  start "" /wait "%ProgramFiles%\MPC-HC\mpc-hc64.exe" /iconsassoc
)

if exist "%ProgramFiles(x86)%\MPC-HC\mpc-hc.exe" (
  copy /y "%~dp0\32bit\mpciconlib.dll" "%ProgramFiles(x86)%\MPC-HC"
  start "" /wait "%ProgramFiles(x86)%\MPC-HC\mpc-hc.exe" /iconsassoc
)

if exist "%ProgramFiles%\K-Lite Codec Pack\MPC-HC\mpc-hc.exe" (
  copy /y "%~dp0\32bit\mpciconlib.dll" "%ProgramFiles%\K-Lite Codec Pack\MPC-HC"
  start "" /wait "%ProgramFiles%\K-Lite Codec Pack\MPC-HC\mpc-hc.exe" /iconsassoc
)

if exist "%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC\mpc-hc.exe" (
  copy /y "%~dp0\32bit\mpciconlib.dll" "%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC"
  start "" /wait "%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC\mpc-hc.exe" /iconsassoc
)

if exist "%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC64\mpc-hc64.exe" (
  copy /y "%~dp0\64bit\mpciconlib.dll" "%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC64"
  start "" /wait "%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC64\mpc-hc64.exe" /iconsassoc
)
