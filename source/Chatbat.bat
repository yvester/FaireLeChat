@echo off
REM  ***************************************
echo ******************* Begin Script %~p0%0 
REM  ***************************************

REM ***************************************
REM Set Config parameters
REM ***************************************
REM "%ProgramFiles(x86)%FaireLeChat\chatConfig.bat"
REM cd %~p0..\config
call "%~dp0%..\config\chatConfig.bat"
echo CopyToClip =  %CopyToClip%
echo CreateShaFile =  %CreateShaFile%

cd "%~p0%..\source"

REM ***************************************
REM CopyToClipBoard
REM ***************************************
if %CopyToClip% == Y (
"%~dp0fciv.exe" -wp -md5 %1 > %~n1.shax
REM "%ProgramFiles(x86)%\FaireLeChat\\fciv.exe" -wp -md5 %1 > %~n1.shax
REM "C:\Program Files (x86)\FaireLeChat\source\fciv.exe" -wp -md5 %1 > %~n1.shax
for /f "tokens=*" %%a in (%~n1.shax) do set a=%%a
echo CCCCCC %~n1.shax 
echo %a% | clip 
REM del %~n1.shax
)

pause

REM ***************************************
REM CopyToFile
REM ***************************************
if %CreateShaFile% == Y ( 
"%~dp0fciv.exe" -wp -md5 %1  > %~n1.sha 
REM "%ProgramFiles(x86)%\FaireLeChat\\fciv.exe" -wp -md5 %1 > %~n1.sha 
)

pause

REM  *************************************
echo ******************* End Script %~p0%0 
REM  **************************************



