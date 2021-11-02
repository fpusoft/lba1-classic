rem @echo off
set WATCOM=C:\projet\WATCOM
set INCLUDE=%WATCOM%\H;%WATCOM%\H\NT
set PATH=%WATCOM%\BINB;%WATCOM%\BIN;%WATCOM%\BINW;%WATCOM%\BINNT;C:\projet\TL
cd lib386
cd lib_3d
del lib_3d.lib
wmake
if errorlevel 1 pause
del *.obj
cd ..\lib_cd
del lib_cd.lib
wmake -f LIB_CD.MAK
if errorlevel 1 pause
del *.obj
cd ..\lib_menu
del lib_menu.lib
wmake
if errorlevel 1 pause
del *.obj
cd ..\lib_midi
del lib_midi.lib
wmake
if errorlevel 1 pause
del midi.obj
cd ..\lib_mix
del lib_mix.lib
wmake
if errorlevel 1 pause
del *.obj
cd ..\lib_samp
del lib_wave.lib
wmake
if errorlevel 1 pause
del *.obj
cd ..\lib_svga
del lib_svga.lib
wmake
if errorlevel 1 pause
del *.obj
del gif.err
cd ..\lib_sys
del lib_sys.lib
wmake
if errorlevel 1 pause
del *.obj
cd ..\..\sources
wmake
if errorlevel 1 pause
del *.obj
del diskfunc.err
del holomap.err
cd ..