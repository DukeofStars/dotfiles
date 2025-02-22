@echo off
setlocal
set BRANCH=testing
taskkill /t /f /im steam.exe 2>NUL
rmdir Nebulous
mklink /j Nebulous Nebulous.%BRANCH%

:: Swap the steam manifest
del ..\appmanifest_887570.acf
mklink /h ..\appmanifest_887570.acf ..\appmanifest_887570.acf.%BRANCH%

:: Uncomment/comment the following line to toggle autostart steam (:: are comments)
:: start "" "%ProgramFiles(x86)%\Steam\Steam.exe"