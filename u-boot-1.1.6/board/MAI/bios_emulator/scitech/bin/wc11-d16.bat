@echo off
REM SETup for compiling with Watcom C/C++ 11.0 in 16 bit mode

if .%CHECKED%==.1 goto checked_build
SET LIB=%SCITECH_LIB%\LIB\RELEASE\DOS16\WC11;.
echo Release build enabled.
goto setvars

:checked_build
SET LIB=%SCITECH_LIB%\LIB\DEBUG\DOS16\WC11;.
echo Checked debug build enabled.
goto setvars

:setvars
SET EDPATH=%WC11_PATH%\EDDAT
SET INCLUDE=INCLUDE;%SCITECH%\INCLUDE;%PRIVATE%\INCLUDE;%WC11_PATH%\H;%WC11_PATH%\H\WIN;
SET WATCOM=%WC11_PATH%
SET MAKESTARTUP=%SCITECH%\MAKEDEFS\WC16.MK
SET USE_WIN16=
SET USE_WIN32=
SET USE_OS216=
SET USE_OS232=
SET USE_OS2GUI=
SET USE_SNAP=
SET USE_QNX4=
SET WC_LIBBASE=WC11
SET EDPATH=%WC11_PATH%\EDDAT
PATH %SCITECH_BIN%;%WC11_PATH%\BINNT;%WC11_PATH%\BINW;%DEFPATH%%WC_CD_PATH%

echo Watcom C/C++ 11.0 16-bit DOS compilation environment set up.
