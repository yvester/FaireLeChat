@echo off
echo Welcome to create! Date : %DATE% Time : %TIME% 
chdir %ProgramFiles(x86)%
del /s /q %ProgramFiles(x86)%\FaireLeChat\*
RMDIR /S /Q %ProgramFiles(x86)%\FaireLeChat
mkdir FaireLeChat
mkdir FaireLeChat\source
mkdir FaireLeChat\config
chdir FaireLeChat\source
set NamePath=%~p0
echo namepath %NamePath%
echo programpath  "%ProgramFiles(x86)%\FaireLeChat\source"
xcopy /y C:%NamePath%source\Chatbat.bat "%ProgramFiles(x86)%\FaireLeChat\source"
xcopy /y C:%NamePath%source\ChatReg.bat "%ProgramFiles(x86)%\FaireLeChat\source"
xcopy /y C:%NamePath%config\chatConfig.bat "%ProgramFiles(x86)%\FaireLeChat\config"
xcopy /y C:%NamePath%source\fciv.exe "%ProgramFiles(x86)%\FaireLeChat\source"

REM Execute the registry update
"C:%NamePath%source\ChatReg.bat"

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
