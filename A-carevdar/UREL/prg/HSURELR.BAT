@ECHO OFF

:Reorganize
 IF NOT EXIST \c\box\?????urx.ptt GOTO Box
@ECHO.
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴커
@ECHO � Reorganizacija           넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴켸�
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽�
@ECHO.

 FOR %%i IN ( \c\box\?????urx.ptt ) DO CALL $new.bat %%i urel prg

:Box
 IF NOT EXIST \c\box\?????ure.ptt GOTO Start
@ECHO.
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴커
@ECHO � Obrada po�te             넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴켸�
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽�
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
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴커
@ECHO � Sintaksa:                  넴
@ECHO �                            넴
@ECHO �   hsurelr.bat              넴
@ECHO �                            넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽賽�
@ECHO.

:Exit
