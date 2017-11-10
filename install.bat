@echo off
echo Welcome to create! Date : %DATE% Time : %TIME% 
chdir %ProgramFiles(x86)%
del /s /q %ProgramFiles(x86)%\FaireLeChat\*
RMDIR /S /Q %ProgramFiles(x86)%\FaireLeChat
mkdir FaireLeChat
chdir FaireLeChat
set NamePath=%~p0
xcopy /y C:%NamePath%source\Chatbat.bat "%ProgramFiles(x86)%\FaireLeChat"
xcopy /y C:%NamePath%source\ChatReg.bat "%ProgramFiles(x86)%\FaireLeChat"
xcopy /y C:%NamePath%source\fciv.exe "%ProgramFiles(x86)%\FaireLeChat"

REM Execute the registry update
C:%NamePath%ChatReg.bat "%ProgramFiles(x86)%\FaireLeChat"

REM C:\\Users\\ytanguy\\Downloads\\AAA\\testmd5sum\\fciv.exe -wp -md5 %1 >> temp.txt
REM set /p VAR=<temp.txt
REM set location="bob"
REM echo|set /p=%1|clip
REM set savedir=%cd%
REM echo xxxcx %savedir%
REM %ProgramFiles(x86)%
REM echo %HOMEPATH%
REM echo program %0
REM echo %~p0
pause