@echo off
title Blue Commands version 1.0
color 1f
::############################

:startup
cls
echo -help (displays this message)
echo -dir (shows contents of the current dir)
echo -clear (clears the screen)
echo -make prog dir (ONLY USE ONCE: creates a directory for the program to store files){ADMIN ONLY}
echo -del prog files {ADMIN ONLY}
echo -create text file (allows the user to create or edit a text file) [PLEASE USE make prog dir FIRST]
echo -command prompt (starts the windows command prompt, type exit to return to this program)
echo -set pass (sets the password) [PLEASE USE make prog dir FIRST]
echo -startup (displays this message again, similar to "help") 
goto comm

:comm
echo.
echo Enter your command:
set /p comm=$ 
goto %comm%





::#####Commands#####
:help
goto startup

:dir
dir
goto comm

:clear
cls
goto startup

:quit
exit

:make prog dir
cd /
cd c://Program Files/
mkdir Something-Files
echo created program dir
cd c://Program Files/Something-Files
goto comm

:del prog files
echo WARNING! THIS WILL DELETE ALL OF THE FILES FOR THIS PROGRAM! Are you sure you wish to continue?
set /p delprogfiles=Continue? (y/n): 
if %delprogfiles%==y goto :delprogfiles
if %delprogfiles%==n goto :canceldelprogfiles

:create text file
cd c://Program Files/Something-Files
set /p textfilename=Name: 
set /p textfilecontent=Content: 
echo %textfilecontent% >> %textfilename%.txt
goto :comm

:command prompt
cmd.exe
goto :comm

:set pass
cd c://Program Files/Something-Files
set /p PASSWORD=Password: 
echo %PASSWORD% > password.txt
goto comm















:end
pause
exit












:delprogfiles
cd c://Program Files/
del Something-Files
goto :comm

:canceldelprogfiles
echo Canceled Deletion
goto :comm