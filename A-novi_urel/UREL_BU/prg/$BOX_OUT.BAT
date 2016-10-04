@ECHO OFF
 cd \a\%1\ptt
 pkzip -m %2 @\a\%1\prg\$box_out.txt
 copy %2 \c\box
 del %2
 cd \a\%1\prg