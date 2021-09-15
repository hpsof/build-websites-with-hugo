rem --  15.09.2021 14:28 hpsof
rem --  idee : hugo-webseite auf swizzonic deployen unter kijumed-dev
setlocal
set user=ssh-597176-hpsof
set pwd=lK9xWkJ8
set host=134.119.225.243
set rpfad=/www/426281_8001/web/3438463/A3438463/kijumed.ch/SUBDOM
set deployfolder=public
PATH=g:\tools\putty;%PATH%

rem --  mit hugo version in public erstellen
call hugo.cmd --baseURL=http://dev.kijumed.ch/ --environment=production

rem --  altes deploy-verz. loeschen auf remote host
plink.exe -l %user% -pw %pwd%     -ssh %host%    rm -rf %rpfad%/%deployfolder%

rem --  aktuellen build auf remote host kopieren
pscp -p -pw  %pwd%  -r %deployfolder%    %user%@%host%:%rpfad%

rem --  altes dev loeschen
plink.exe -l %user% -pw %pwd%     -ssh %host%    rm -rf %rpfad%/dev

rem --  neues deployment umbenennen nach dev
plink.exe -l %user% -pw %pwd%     -ssh %host%    mv %rpfad%/%deployfolder% %rpfad%/dev

rem -- finito
echo. *** finito ***
echo.
