@ECHO OFF

:Ini
 cls
@ECHO.
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
@ECHO � Inicijalizacija  hsUREL 9.10 넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽賽賽�
@ECHO.

 IF EXIST urel-910.txt GOTO IniL
 copy ..\ini\urel-910.txt       >nul
 pkunzip -o ..\ini\urel-prg.zip >nul
 del *.cdx                      >nul

:IniL
 copy ..\ini\ini1.dbf ini.dbf   >nul
 IF NOT EXIST urel.exe   pkunzip -o ..\ini\urel-prg.zip >nul
 IF NOT EXIST $print.bat pkunzip -o ..\ini\urel-prt.zip >nul
 GOTO Exit

:Error
@ECHO.
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴커
@ECHO � Sintaksa:                  넴
@ECHO �                            넴
@ECHO �   hsurelv1.bat             넴
@ECHO �                            넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽賽�
@ECHO.

:Exit
