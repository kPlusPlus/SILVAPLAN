@ECHO OFF

 IF %1 == . GOTO Error
 IF %2 == . GOTO Error

:DOSPrint

 DOSprint /SEL'%2' %3 %1
 GOTO Exit

:Error

:Exit
