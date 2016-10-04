@ECHO OFF

:Ini
 @ECHO.
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Instalacija hsUREL           ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
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
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Instalacija hsUREL - Lokalno ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
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
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Instalacija hsUREL - Klijent ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
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
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Instalacija hsUREL - Server ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
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
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Instalacija hsUREL zavrçena ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
@ECHO.

GOTO Exit

:Error
@ECHO.
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³ Sintaksa:                  ³Û
@ECHO ³                            ³Û
@ECHO ³   hsureli.bat I L S G      ³Û
@ECHO ³                            ³Û
@ECHO ³   I - instalacija          ³Û
@ECHO ³       L - lokalna          ³Û
@ECHO ³       K - klijent          ³Û
@ECHO ³       S - server           ³Û
@ECHO ³                            ³Û
@ECHO ³   L - lokalni disk         ³Û
@ECHO ³       X - C ili D          ³Û
@ECHO ³                            ³Û
@ECHO ³   S - serverski disk       ³Û
@ECHO ³       X - S                ³Û
@ECHO ³                            ³Û
@ECHO ³   G - godina               ³Û
@ECHO ³       9999                 ³Û
@ECHO ³                            ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
@ECHO.

:Exit
