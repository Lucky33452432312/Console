@echo off
title Console 1.2 Beta
if exist %cd%\Error.vbs echo Error.vbs Exists
if not exist %cd%\Error.vbs goto errorvbsmissing
:aa
echo Console 1.2 Beta, made by Astral Cat
echo.
:a
set /p c=Console:
if %c% == whoami goto who
if %c% == cd goto cd
if %c% == dir goto dir
if %c% == md goto folder
if %c% == start goto start
if %c% == help goto help
if %c% == color goto color
if %c% == filecreate goto fc
if %c% == cls goto cls
if %c% == taskend goto end
if %c% == websearch goto websearch
if %c% == tasklist goto tasklist
if %c% == echo goto echo
if %c% == notepad goto Notepad
if %c% == mspaint goto paint
if %c% == iexplore goto ie
if %c% == excel goto excel
if %c% == powerpnt goto powerpoint
if %c% == winword goto word
if %c% == outlook goto mail
if %c% == shutdown goto shutdown
if %c% == cmdmode goto cmdmode
if %c% == powershellmode goto powershellmode
if %c% == del goto warningdel
if %c% == number goto number
if %c% == versioninfo goto version
if %c% == math goto math
if %c% == log goto log
if %c% == path goto path
if %c% == filecheck goto filecheck
if %c% == download goto download
echo Unknown command, type "help" for a list of commands.
goto a
:who
echo You are %USERNAME%
goto a
:cd
set /p directory= Select the directory you want to go to:
cd %directory%
goto a
:dir
dir
goto a
:folder
set /p mdname= Select the name of the folder:
md %mdname%
goto a
:start
set /p start= Select the program you want to open:
start %start%
goto a
:help
echo whoami - Shows the username of the user that you are logged into.
echo cd - Goes into a directory.
echo dir - Lists the items in your directory.
echo md - Creates a folder in the folder you are in.
echo start - Starts a program.
echo help - Lists all of the commands.
echo color - Changes Console colours.
echo filecreate - Creates a file.
echo cls - Clears the text on the screen.
echo taskend - Ends a task, you can see all of the tasks running with tasklist.
echo websearch - Goes to a website.
echo tasklist - Lists the tasks running.
echo echo - Returns the value that you entered.
echo notepad - Opens notepad.
echo mspaint - Opens paint.
echo iexplore - Opens IE.
echo excel - Opens excel.
echo powerpnt - Opens powerpoint.
echo winword - Opens word
echo outlook - Opens outlook.
echo shutdown - Shuts the computer down.
echo cmdmode - Changes to CMD mode.
echo powershellmode - Changes to Powershell mode.
echo del - Deletes a file.
echo number - Generates a number.
echo versioninfo - Shows the version info.
echo math - Answers a math question for you.
echo log - Creates a log file.
echo filecheck - Checks if any files used by Console are missing.
echo download - Opens the github page.
goto a
:color
set /p bg= Select the background colour:
set /p text= Select the text colour:
color %bg%%text%
goto a
:fc
set /p filename= Select the name of the file:
set /p extension= Select the extension of the file:
echo. > %filename%.%extension%
goto a
:cls
cls
goto a
:end
set /p task= Select the task that you want to end:
set /p taskendtype= Select the way you want to end it:
taskkill %taskendtype% %task%
goto a
:websearch
set /p web= Enter the link:
start iexplore.exe %web%
goto a
:tasklist
tasklist
goto a
:echo
set /p echo= What do you want to say:
echo %echo%
goto a
:TXT Editor
echo 1 For TXT Creater
echo 2 For TXT Editor
set /p option=
if %option% == 1 goto b
if %option% == 2 goto editor
goto a
:b
set /p name= Enter the name:
set /p inside= Enter the text inside:
echo. > %name%.txt
echo %inside% > %name%.txt
pause
goto a
:editor
set /p name= Enter the name:
set /p inside= Enter the text inside:
echo %inside% > %name%.txt
pause
goto a
:Notepad
start notepad.exe
goto a
:cmd
start cmd.exe
goto a
:paint
start mspaint.exe
goto a
:ie
start iexplore
goto a
:calc
:excel
start excel
goto a
:powerpoint
start powerpnt
goto a
:word
start winword
goto a
:ps
start Powershell
goto a
:mail
start outlook
goto a
:shutdown
set /p timer= Enter the time amount until the shutdown:
set /p message= What will the message display:
set /p shutdowntype= Will it be shutdown or restart:
shutdown %shutdowntype% -t %timer% -c "%message%"
goto a
:cmdmode
title CMD
cmd
:powershellmode
title Powershell
powershell
:warningdel
set code=%random%
echo Warning - You are required to enter a code before you can use this command.
echo.
echo %code%
echo.
set /p check=Type the code above:
if %check% == %code% goto del
if not %check% == %code% goto b
:b
if exist %cd%\Error.vbs start Error.vbs
if not exist %cd%\Error.vbs echo Incorrect Code, also Error.vbs is missing.
goto a
:del
set /p filedelete=Enter the file you want to delete:
del /f %filedelete%
goto a
:number
echo %random%
goto a
:version
echo Console 1.2 Beta
echo Beta 1
goto a
:math
set /p question=Enter the question:
set /a answer=%question%
echo %answer%
goto a
:log
echo .LOG > Log.txt
goto a
:path
echo You are in %cd%.
goto a
:errorvbsmissing
cls
echo Error.vbs missing.
echo You can download Error.vbs from the github page.
pause
goto aa
:filecheck
if exist %cd%\Error.vbs echo Error.vbs Exists
if not exist %cd%\Error.vbs goto errorvbsmissing
goto a
:download
start https://github.com/AstralCat1/Console
goto a