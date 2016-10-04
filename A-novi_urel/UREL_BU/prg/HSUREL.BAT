@ECHO OFF

:Ini
 cls
@ECHO.
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Inicijalizacija  hsUREL ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßß
@ECHO.

 C:
 cd \a\urel\prg

 IF %1. == .  GOTO Local
 IF %1. == L. GOTO Local
 IF %1. == S. GOTO Server
 GOTO Exit

:Local
 IF NOT EXIST ..\ini\urel-prg.zip GOTO Server
 copy ..\ini\hsurelv1.bat >nul
@call hsurelv1.bat
 GOTO Run

:Server
 IF NOT EXIST S:\urel\ini\urel-prg.zip net use S: \\SERVER\a /yes >nul
 IF NOT EXIST S:\urel\ini\urel-prg.zip GOTO Error
 copy S:\urel\ini\hsurelv2.bat >nul
@call hsurelv2.bat S
 GOTO Run

:Run
@call hsurelr.bat
 GOTO Exit

:Error
@ECHO.
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Sintaksa:                  ³Û
@ECHO ³                            ³Û
@ECHO ³   hsurel.bat I             ³Û
@ECHO ³                            ³Û
@ECHO ³   I - instalacija (L/S)    ³Û
@ECHO ³                            ³Û
@ECHO ³       L - lokalna          ³Û
@ECHO ³       S - serverska        ³Û
@ECHO ³                            ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
@ECHO.

:Exit
