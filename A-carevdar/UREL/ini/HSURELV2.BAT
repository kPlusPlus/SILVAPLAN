@ECHO OFF

:Ini
 cls
@ECHO.
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Inicijalizacija  hsUREL 9.10 ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
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
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Sintaksa:                  ³Û
@ECHO ³                            ³Û
@ECHO ³   hsurelv2.bat S           ³Û
@ECHO ³                            ³Û
@ECHO ³   S - serverski disk       ³Û
@ECHO ³                            ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
@ECHO.

:Exit
