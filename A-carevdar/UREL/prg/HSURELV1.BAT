@ECHO OFF

:Ini
 cls
@ECHO.
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Inicijalizacija  hsUREL 9.10 ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
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
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Sintaksa:                  ³Û
@ECHO ³                            ³Û
@ECHO ³   hsurelv1.bat             ³Û
@ECHO ³                            ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
@ECHO.

:Exit
