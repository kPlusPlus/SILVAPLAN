@ECHO OFF

:Ini
 cls
@ECHO.
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
@ECHO � Inicijalizacija  hsUREL 9.10 넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽賽賽�
@ECHO.

 IF %1. == .  GOTO Error

 IF EXIST urel-910.txt GOTO IniS

 copy %1:\urel\ini\urel-910.txt       >nul
 pkunzip -o %1:\urel\ini\urel-prg.zip >nul
 del *.cdx                            >nul

:IniS
 copy %1:\urel\ini\ini2.dbf ini.dbf   >nul
 IF NOT EXIST urel.exe   pkunzip -o %1:\urel\ini\urel-prg.zip >nul
 IF NOT EXIST $print.bat pkunzip -o %1:\urel\ini\urel-prt.zip >nul
 GOTO Exit

:Error
@ECHO.
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴커
@ECHO � Sintaksa:                  넴
@ECHO �                            넴
@ECHO �   hsurelv2.bat S           넴
@ECHO �                            넴
@ECHO �   S - serverski disk       넴
@ECHO �                            넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽賽�
@ECHO.

:Exit
