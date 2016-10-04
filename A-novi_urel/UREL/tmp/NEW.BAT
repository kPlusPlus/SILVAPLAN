@ECHO OFF
@ECHO.
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³  Reorganizacija #1   ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßßßßß
@ECHO.

 pkunzip -o $prg.zip \a\urel\prg
 del \a\urel\prg\urel-???.txt 
 del \a\urel\prg\*.cdx

 pkunzip -o $prg.zip \a\urel\prg

:Local
 IF NOT EXIST ..\ini\urel-prg.zip      GOTO Server
 del \a\urel\map\*.cdx 

 pkunzip -o $ini.zip                   ..\ini
 pkunzip -o ..\ini\urel-rpt.zip        ..\rpt
 pkunzip -o ..\ini\urel-map.zip        ..\map

:Server
 IF NOT EXIST S:\urel\ini\urel-prg.zip GOTO Exit
 del S:\urel\map\*.cdx

 pkunzip -o $ini.zip                   S:\urel\ini
 pkunzip -o S:\urel\ini\urel-rpt.zip   S:\urel\rpt
 pkunzip -o S:\urel\ini\urel-map.zip   S:\urel\map

:Exit
