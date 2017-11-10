@echo off
echo Welcome to FaireLeChat ou/or SeeTheSha! Date : %DATE% Time : %TIME% Name : %1 > temp.txt
REM C:\\Users\\ytanguy\\Downloads\\AAA\\testmd5sum\\fciv.exe -wp -md5 %1 >> temp.txt
"%ProgramFiles(x86)%\FaireLeChat\\fciv.exe" -wp -md5 %1 >> temp.txt
REM set /p VAR=<temp.txt
REM set location="bob"
REM echo|set /p=%1|clip
REM pause
