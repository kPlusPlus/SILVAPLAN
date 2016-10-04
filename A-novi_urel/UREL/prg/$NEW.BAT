@ECHO OFF
 IF NOT EXIST \a\%2\tmp\NUL md \a\%2\tmp
 cd	 \a\%2\tmp
 pkunzip %1 -o
@CALL	 new.bat
 copy	 %1 \c\box\arhiva >NUL
 del	 %1 >NUL
 cd	 \a\%2\%3
:Exit
