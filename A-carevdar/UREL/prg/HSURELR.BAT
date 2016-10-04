@ECHO OFF

:Reorganize
 IF NOT EXIST \c\box\?????urx.ptt GOTO Box
@ECHO.
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Reorganizacija           ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßß
@ECHO.

 FOR %%i IN ( \c\box\?????urx.ptt ) DO CALL $new.bat %%i urel prg

:Box
 IF NOT EXIST \c\box\?????ure.ptt GOTO Start
@ECHO.
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Obrada poçte             ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßß
@ECHO.

 FOR %%i IN ( \c\box\?????ure.ptt ) DO CALL $box_in.bat %%i \a\urel\ptt

:Start
 IF EXIST urel.exe GOTO Run
 GOTO Error

:Run
 urel.exe -t
 GOTO Exit

:Error
@ECHO.
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Sintaksa:                  ³Û
@ECHO ³                            ³Û
@ECHO ³   hsurelr.bat              ³Û
@ECHO ³                            ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
@ECHO.

:Exit
