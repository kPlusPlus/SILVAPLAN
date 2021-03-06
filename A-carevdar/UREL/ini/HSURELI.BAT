@ECHO OFF

:Ini
 @ECHO.
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
@ECHO � Instalacija hsUREL           넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽賽賽�
@ECHO.

 cls

 IF .%1 == .  GOTO Error
 IF .%2 == .  GOTO Error
 IF .%3 == .  GOTO Error
 IF .%4 == .  GOTO Error

 IF .%1 == .L GOTO IniL
 IF .%1 == .l GOTO IniL
 IF .%1 == .K GOTO IniK
 IF .%1 == .k GOTO IniK
 IF .%1 == .S GOTO IniS
 IF .%1 == .s GOTO IniS

 GOTO Error

:IniL

@ECHO.
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
@ECHO � Instalacija hsUREL - Lokalno 넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽賽賽�
@ECHO.

 %2:
 md \a\map
 md \a\map\dbf
 md \a\urel\arh
 md \a\urel\dbf
 md \a\urel\dbf\%4
 md \a\urel\doc
 md \a\urel\lst
 md \a\urel\map
 md \a\urel\prg
 md \a\urel\ptt
 md \a\urel\rpt
 md \a\urel\tmp
 md \a\urel\u2f
 md \a\urel\donos

 cd \a\urel\prg

 copy \a\urel\ini\hsurel.bat
 copy \a\urel\ini\hsurelr.bat

 pkunzip -o \a\urel\ini\urel-prg.zip
 pkunzip -o \a\urel\ini\urel-prt.zip

 pkunzip -o \a\urel\ini\urel-dbf.zip \a\urel\dbf
 pkunzip -o \a\urel\ini\urel-map.zip \a\urel\map
 pkunzip -o \a\urel\ini\urel-rpt.zip \a\urel\rpt
 pkunzip -o \a\urel\ini\urel-u2f.zip \a\urel\u2f
 pkunzip -o \a\urel\ini\map-dbf.zip  \a\map\dbf
 pkunzip -o \a\urel\ini\urel-don.zip \a\urel\donos

 GOTO End

:IniK

@ECHO.
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
@ECHO � Instalacija hsUREL - Klijent 넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽賽賽�
@ECHO.

 %2:
 md \a\urel
 md \a\urel\arh
 md \a\urel\doc
 md \a\urel\lst
 md \a\urel\prg
 md \a\urel\ptt
 md \a\urel\tmp

 cd \a\urel\prg

 copy %3:\urel\ini\hsurel.bat
 copy %3:\urel\ini\hsurelr.bat

 pkunzip -o %3:\urel\ini\urel-prg.zip
 pkunzip -o %3:\urel\ini\urel-prt.zip

 GOTO End

:IniS

@ECHO.
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
@ECHO � Instalacija hsUREL - Server 넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴昴
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽賽賽
@ECHO.

 md %3:\map
 md %3:\map\dbf
 md %3:\urel\arh
 md %3:\urel\dbf
 md %3:\urel\dbf\%4
 md %3:\urel\doc
 md %3:\urel\map
 md %3:\urel\rpt
 md %3:\urel\u2f
 md %3:\urel\donos

 pkunzip -o %3:\urel\ini\urel-dbf.zip %3:\urel\dbf
 pkunzip -o %3:\urel\ini\urel-map.zip %3:\urel\map
 pkunzip -o %3:\urel\ini\urel-rpt.zip %3:\urel\rpt
 pkunzip -o %3:\urel\ini\urel-u2f.zip %3:\urel\u2f
 pkunzip -o %3:\urel\ini\map-dbf.zip  %3:\map\dbf
 pkunzip -o %3:\urel\ini\urel-don.zip %3:\urel\donos

 GOTO End

:End
@ECHO.
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
@ECHO � Instalacija hsUREL zavr�ena 넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴昴
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽賽賽
@ECHO.

GOTO Exit

:Error
@ECHO.
@ECHO 旼컴컴컴컴컴컴컴컴컴컴컴컴컴커
@ECHO � Sintaksa:                  넴
@ECHO �                            넴
@ECHO �   hsureli.bat I L S G      넴
@ECHO �                            넴
@ECHO �   I - instalacija          넴
@ECHO �       L - lokalna          넴
@ECHO �       K - klijent          넴
@ECHO �       S - server           넴
@ECHO �                            넴
@ECHO �   L - lokalni disk         넴
@ECHO �       X - C ili D          넴
@ECHO �                            넴
@ECHO �   S - serverski disk       넴
@ECHO �       X - S                넴
@ECHO �                            넴
@ECHO �   G - godina               넴
@ECHO �       9999                 넴
@ECHO �                            넴
@ECHO 읕컴컴컴컴컴컴컴컴컴컴컴컴컴켸�
@ECHO   賽賽賽賽賽賽賽賽賽賽賽賽賽賽�
@ECHO.

:Exit
