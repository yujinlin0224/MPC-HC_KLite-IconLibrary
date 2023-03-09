@echo off

setlocal EnableDelayedExpansion

set Filename=mpciconlib.dll
set FilePath[32]=%~dp0\32bit\%Filename%
set FilePath[64]=%~dp0\64bit\%Filename%

set ProgramName[32]=mpc-hc.exe
set ProgramName[64]=mpc-hc64.exe

set ProgramDirPaths=5
set ProgramDirPaths[1]=%ProgramFiles%\MPC-HC
set ProgramDirPaths[2]=%ProgramFiles(x86)%\MPC-HC
set ProgramDirPaths[3]=%ProgramFiles%\K-Lite Codec Pack\MPC-HC
set ProgramDirPaths[4]=%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC
set ProgramDirPaths[5]=%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC64

for /l %%i in (1,1,%ProgramDirPaths%) do (
  for %%a in (32,64) do (
    echo "!ProgramDirPaths[%%i]!\!ProgramName[%%a]!"
    if exist "!ProgramDirPaths[%%i]!\!ProgramName[%%a]!" (
      copy /y "!ProgramDirPaths[%%i]!\%Filename%" "!ProgramDirPaths[%%i]!\%Filename%.bak"
      copy /y "!FilePath[%%a]!" "!ProgramDirPaths[%%i]!"
      start "" /wait "!ProgramDirPaths[%%i]!\!ProgramName[%%a]!" /iconsassoc
    )
  )
)
