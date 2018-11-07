ECHO OFF
ECHO Copying F5 ticket files to home directory "C:\F5_DATA\OLYMPUS\<case_directory>"
@ECHO.
ECHO Please enter ticket number: 
SET /p DIRECTORY_NR=:
@ECHO.
MKDIR C:\F5_DATA\OLYMPUS\%DIRECTORY_NR%
CD C:\APPS\WinSCP
PAUSE
ECHO PSCP is start now
pscp -r "latek@quantum.es.f5net.com:/olympus/shares/cds/global/%DIRECTORY_NR%/*" "C:\F5_DATA\OLYMPUS\%DIRECTORY_NR%"
ECHO Files succesfully coppied
PAUSE
@ECHO.