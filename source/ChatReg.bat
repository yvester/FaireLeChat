@echo off
echo Set the registry key for FaireLeChat!
echo %ProgramFiles(x86)%
reg add HKEY_CLASSES_ROOT\7-Zip.zip\shell\FaireLeChat\command /t REG_SZ /d "\"%ProgramFiles(x86)%\FaireLeChat\source\Chatbat.bat\" ""%%1\" /f
reg add HKEY_CLASSES_ROOT\7-Zip.tgz\shell\FaireLeChat\command /t REG_SZ /d "\"%ProgramFiles(x86)%\FaireLeChat\source\Chatbat.bat\" ""%%1\" /f
reg add HKEY_CLASSES_ROOT\7-Zip.tar\shell\FaireLeChat\command /t REG_SZ /d "\"%ProgramFiles(x86)%\FaireLeChat\source\Chatbat.bat\" ""%%1\" /f
REM eg add HKEY_CLASSES_ROOT\7-Zip.zip\shell\FaireLeChat\command /t REG_SZ /d "%ProgramFiles(x86)%\FaireLeChat\source\Chatbat.bat %%1" /f
REM reg add HKEY_CLASSES_ROOT\CompressedFolder\shell\FaireLeChat\command /t REG_SZ /d "%ProgramFiles(x86)%\FaireLeChat\Chatbat.bat %%1" /f
REM Reg add HKEY_CLASSES_ROOT\7-Zip.zip\shell\FaireLeChat\command /t REG_SZ /d "\"%ProgramFiles(x86)%\ramenerlechat\source\Process.bat\" ""%%1\" /f
REM reg add HKEY_CLASSES_ROOT\7-Zip.zip\shell\FaireLeChat\command /t REG_SZ /d "C:\Program Files (x86)\FaireLeChat\Chatbat.bat %%1" /f
REM reg add HKEY_CLASSES_ROOT\7-Zip.zip\shell\FaireLeChat\command /t REG_SZ /d "C:\\Users\\ytanguy\\Documents\\documentation\\\\Testbat.bat %%1"     <<<<< WORKS
REM reg add HKEY_CLASSES_ROOT\7-Zip.zip\shell\FaireLeChat\command /t REG_SZ /d "C:\Program Files (x86)\FaireLeChat\Testbat.bat %1"  /f
REM reg add HKEY_CLASSES_ROOT\7-Zip.zip\shell\FaireLeChat\command /t REG_SZ /d "C:\Program Files (x86)\FaireLeChat\Testbat.bat" "%1"  /f
REM "C:\Program Files (x86)\FaireLeChat\Testbat.bat" "%1"    <------- marche 
REM C:\\Users\\ytanguy\\Documents\\documentation\\\\Testbat.bat %1 <------- marche
REM C:\\Users\\ytanguy\\Downloads\\AAA\\testmd5sum\\fciv.exe -wp -md5 %1 > temp.txt
REM echo %cd% %DATE% %TIME% >> temp.txt
REM set /p VAR=<temp.txt
REM set location="bob"
REM echo|set /p=%1|clip
REM pause
