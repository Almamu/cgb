@ECHO OFF
DEL /Q FILESYS.ASM FILESYS.B??
rem CD DAVE
rem CALL RESALL.BAT
rem CD ..
rem CD JOHN
rem CALL RESALL.BAT
rem CD ..
COPY FREEUSA.LST+JOHN\FILEJOHN.LST+DAVE\FILEDAVE.LST FILESYS.LST
GATHER FILESYS.LST 14:4000
COPY DAVE\SPRDAVE.LST+JOHN\SPRJOHN.LST SPRITES.LST
DEL SPRITES.B??
gmbspr2 -a0A:4280 SPRITES @SPRITES.LST ^ if errorlevel != 0 cancel
animrgb SPRITES.LST
