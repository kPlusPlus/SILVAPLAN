@ECHO OFF
 Pkunzip -o %1 %2
 Copy %1 \c\box\arhiva
 Del %1
