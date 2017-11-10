@echo off
echo Welcome to FaireLeChat ou/or SeeTheSha! Date : %DATE% Time : %TIME% Name : %1 > %~n1.sha
"%ProgramFiles(x86)%\FaireLeChat\\fciv.exe" -wp -md5 %1 >> %~n1.sha   
REM C:\\Users\\ytanguy\\Downloads\\AAA\\testmd5sum\\fciv.exe -wp -md5 %1 >> %~n1.sha
REM set /p VAR=<temp.txt
REM set location="bob"
REM echo|set /p=%1|clip
REM pause
