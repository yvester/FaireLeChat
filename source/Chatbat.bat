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
xcopy /y %1 "%TEMP%" 
if %CopyToClip% == Y (
"%~dp0fciv.exe" -wp -md5 %TEMP%\%~n1%~x1 > %TEMP%\%~n1.shax
for /f "tokens=*" %%a in (%TEMP%\%~n1.shax) do (
set yy=%%a
) 
echo !yy! | clip 
del %TEMP%\%~n1%~x1
del %TEMP%\%~n1.shax
)

REM ***************************************
REM CopyToFile
REM ***************************************
xcopy /y %1 "%TEMP%" 
if %CreateShaFile% == Y ( 
"%~dp0fciv.exe" -wp -md5 %TEMP%\%~n1%~x1 > %~n1.sha
)
del %TEMP%\%~n1%~x1


REM echo %TEMP%\%~n1.shax
REM  echo nomducheck %1
REM  echo nomducheckaaa %TEMP%\%~n1
REM  echo extension %~x1
REM  echo justtemp %TEMP%
REM echo ffff %TEMP%\%~n1.sha


REM  *************************************
REM  *************************************
echo ******************* End Script %~p0%0 
REM  **************************************
REM  *************************************


