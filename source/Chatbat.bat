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

REM ***************************************
REM Get the sha
REM ***************************************
"%~dp0fciv.exe" -wp -md5 %~n1%~x1 > %~n1.shatemp

SETLOCAL EnableDelayedExpansion
REM ***************************************
REM CopyToClipBoard
REM ***************************************
if %CopyToClip% == Y (
for /f "tokens=*" %%a in (%~n1.shatemp) do (
set yy=%%a
) 
echo !yy! | clip 
)

REM ***************************************
REM CopyToFile
REM ***************************************
if %CreateShaFile% == Y ( 
echo f | xcopy /f /y %~n1.shatemp %~n1.sha
)

REM ***************************************
REM CleanUp
REM ***************************************
del %~n1.shatemp

REM  *************************************
REM  *************************************
echo ******************* End Script %~p0%0 
REM  **************************************
REM  *************************************

REM del %~n1%~x1
REM echo %TEMP%\%~n1.shax
REM  echo nomducheck %1
REM  echo nomducheckaaa %TEMP%\%~n1
REM  echo extension %~x1
REM  echo justtemp %TEMP%
REM echo ffff %TEMP%\%~n1.sha

