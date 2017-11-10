@echo off

echo Welcome to create! Date : %DATE% Time : %TIME% > temp.txt
set savedir=%cd%
echo xxxcx %savedir%
chdir C:\Program Files (x86)\
REM RMDIR /S /Q [drive:]path RD [/S] [/Q] [drive:]path
del /s /q C:\Program Files (x86)\FaireLeChat\*
RMDIR /S /Q C:\Program Files (x86)\FaireLeChat
mkdir FaireLeChat
chdir FaireLeChat
REM copy nul > file.txt
echo %HOMEPATH%
xcopy /y %savedir%\Chatbat.bat  "C:\Program Files (x86)\FaireLeChat"
xcopy /y %savedir%\ChatReg.bat  "C:\Program Files (x86)\FaireLeChat"
xcopy /y %savedir%\fciv.exe  "C:\Program Files (x86)\FaireLeChat"
REM xcopy /y C:\Users\ytanguy\Downloads\FaireLeChat\Chatbat.bat  "C:\Program Files (x86)\FaireLeChat"
REM xcopy /y C:\Users\ytanguy\Downloads\FaireLeChat\ChatReg.bat  "C:\Program Files (x86)\FaireLeChat"
REM xcopy /y C:\Users\ytanguy\Downloads\FaireLeChat\fciv.exe  "C:\Program Files (x86)\FaireLeChat"
REM xcopy /s c:\source d:\target
REM C:\\Users\\ytanguy\\Downloads\\AAA\\testmd5sum\\fciv.exe -wp -md5 %1 >> temp.txt
REM set /p VAR=<temp.txt
REM set location="bob"
REM echo|set /p=%1|clip
REM pause
