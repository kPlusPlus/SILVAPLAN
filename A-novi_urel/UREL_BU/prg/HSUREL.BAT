@ECHO OFF

:Ini
 cls
@ECHO.
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴�
@ECHO � Inicijalizacija  hsUREL 넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴昴
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽
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
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴커
@ECHO � Sintaksa:                  넴
@ECHO �                            넴
@ECHO �   hsurel.bat I             넴
@ECHO �                            넴
@ECHO �   I - instalacija (L/S)    넴
@ECHO �                            넴
@ECHO �       L - lokalna          넴
@ECHO �       S - serverska        넴
@ECHO �                            넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽賽�
@ECHO.

:Exit
