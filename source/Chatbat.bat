@echo off
REM  *************************************
REM  ***************************************
echo ******************* Begin Script %~p0%0 
REM  ***************************************
REM  *************************************

REM ***************************************
REM Set Config parameters
REM ***************************************
call "%~dp0%..\config\chatConfig.bat"
echo CopyToClip =  %CopyToClip%
echo CreateShaFile =  %CreateShaFile%


SETLOCAL EnableDelayedExpansion
REM ***************************************
REM CopyToClipBoard
REM ***************************************
if %CopyToClip% == Y (
"%~dp0fciv.exe" -wp -md5 %1 > %~n1.shax
for /f "tokens=*" %%a in (%~n1.shax) do (
set yy=%%a
) 
echo !yy! | clip 
del %~n1.shax
)

REM ***************************************
REM CopyToFile
REM ***************************************
if %CreateShaFile% == Y ( 
"%~dp0fciv.exe" -wp -md5 %1 > %~n1.sha 
)

REM  *************************************
REM  *************************************
echo ******************* End Script %~p0%0 
REM  **************************************
REM  *************************************


