@ECHO OFF
@ECHO.
@ECHO ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
@ECHO ³  Reorganizacija   ³Û
@ECHO ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÛ
@ECHO   ßßßßßßßßßßßßßßßßßßßß
@ECHO.

 pkunzip -o $prg.zip \a\urel\prg

:Local
 IF NOT EXIST ..\ini\urel-prg.zip      GOTO Server
 del \a\urel\prg\*.cdx 
 del \a\urel\prg\urel-907.txt 
 del \a\urel\map\*.cdx
 del \a\urel\u2f\*.dbf
 del \a\urel\u2f\*.cdx
 del \a\urel\ini\urel-uzg.zip
 del \a\urel\ini\urel-dbg.zip
 md  \a\urel\donos
 pkunzip -o $ini.zip                   ..\ini
 pkunzip -o ..\ini\urel-rpt.zip        ..\rpt
 pkunzip -o ..\ini\urel-map.zip        ..\map
 pkunzip -o ..\ini\urel-u2f.zip        ..\u2f
 pkunzip -o ..\ini\urel-don.zip        ..\donos

:Server
 IF NOT EXIST S:\urel\ini\urel-prg.zip GOTO Exit
 del S:\urel\prg\*.cdx
 del S:\urel\prg\urel-907.txt
 del S:\urel\map\*.cdx
 del S:\urel\u2f\*.cdx
 del S:\urel\u2f\*.dbf
 del S:\urel\ini\urel-uzg.zip
 del S:\urel\ini\urel-dbg.zip
 md  S:\urel\donos
 pkunzip -o $ini.zip                   S:\urel\ini
 pkunzip -o S:\urel\ini\urel-rpt.zip   S:\urel\rpt
 pkunzip -o S:\urel\ini\urel-map.zip   S:\urel\map
 pkunzip -o S:\urel\ini\urel-u2f.zip   S:\urel\u2f
 pkunzip -o S:\urel\ini\urel-don.zip   S:\urel\donos

:Exit
