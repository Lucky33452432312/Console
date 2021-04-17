@echo off
title Console 1.2 Beta
echo Console 1.2 Beta, Made By Astral Cat 2020
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
if %c% == cmd goto cmd
if %c% == mspaint goto paint
if %c% == iexplore goto ie
if %c% == calc goto calc
if %c% == excel goto excel
if %c% == powerpnt goto powerpoint
if %c% == winword goto word
if %c% == powershell goto ps
if %c% == outlook goto mail
if %c% == cmdmode goto cmdmode
if %c% == powershellmode goto powershellmode
if %c% == del goto warningdel
if %c% == random goto random
if %c% == versioninfo goto version
echo Unknown Command, Type "help" For A List Of Commands
goto a
:who
echo You Are %USERNAME%
goto a
:cd
set /p directory= Select The Directory You Want To CD To:
cd %directory%
goto a
:dir
dir
goto a
:folder
set /p mdname= Select The Name Of The Folder:
md %mdname%
goto a
:start
set /p start= Select The Program You Want To Start In This Folder:
start %start%
goto a
:help
echo whoami - Lists The Current User You Are
echo cd - Goes Into A Directory
echo dir - Lists The Items In Your Directory
echo md - Creates A Folder In The File Youre In
echo start - Starts A Program In The Folder Youre In
echo help - Lists All The Commands
echo color - You Can Choose A Colour For The Text And Background
echo filecreate - Allows You To Create Any Type Of File
echo cls - Clears The Screen
echo taskend - Choose To Taskkill A Task
echo websearch - Go To A Website
echo tasklist - Lists The Tasks That Are On
echo echo - Says The Thing You Typed
echo notepad - Opens Notepad
echo cmd - Opens CMD
echo mspaint - Opens MS Paint
echo iexplore - Opens Internet Explorer
echo calc - Opens The Calculator
echo excel - Opens Excel
echo powerpnt - Opens Powerpoint
echo winword - Opens Word
echo powershell - Opens Powershell
echo outlook - Opens Outlook
echo cmdmode - Turns Console 1.2 Into A CMD
echo powershellmode - Same As Above But With Powershell
echo del - Deletes A File
echo random - Generates A Random Number
echo versioninfo - Shows The Version Info
goto a
:color
set /p bg= Select The Background Colour:
set /p text= Select The Text Colour:
color %bg%%text%
goto a
:fc
set /p filename= Select The Name Of The File:
set /p extension= Select The Extension/Type Of File:
echo. > %filename%.%extension%
goto a
:cls
cls
goto a
:end
set /p task= Select The Task You Want To Kill:
set /p taskendtype= Select The Way To Kill Them:
taskkill %taskendtype% %task%
goto a
:websearch
set /p web= Enter The Link:
echo 1 For Internet Explorer
echo 2 For Chrome
set /p browser= Enter The Browser:
if %browser% == 1 goto IE
if %browser% == 2 goto chrome
:IE
start iexplore.exe %web%
goto a
:chrome
start chrome.exe %web%
goto a
:tasklist
tasklist
goto a
:echo
set /p echo= What Do You Want To Say:
echo %echo%
goto a
:TXT Editor
echo 1 For TXT Creater
echo 2 For TXT Editor
set /p option= Choose The Type You Will Do:
if %option% == 1 goto b
if %option% == 2 goto editor
goto a
:b
set /p name= Enter The Name Of The TXT:
set /p inside= Enter The Text Inside Of The TXT:
echo. > %name%.txt
echo %inside% > %name%.txt
pause
goto a
:editor
set /p name= Enter The Name Of The TXT:
set /p inside= Enter The Text Inside Of The TXT:
echo %inside% > %name%.txt
pause
goto a
:Notepad
start notepad.exe
echo Sucsessfuly Opened File "notepad.exe"
goto a
:cmd
start cmd.exe
echo Sucsessfuly Opened File "cmd.exe"
goto a
:paint
start mspaint.exe
echo Sucsessfuly Opened File "paint.exe"
goto a
:ie
start iexplore
echo Sucsessfuly Opened File "iexplore.exe"
goto a
:calc
start Calc
echo Sucsessfuly Opened File "Calculator.exe"
goto a
:excel
start excel
echo Sucsessfuly Opened File "Excel.exe"
goto a
:powerpoint
start powerpnt
echo Sucsessfuly Opened File "Powerpnt.exe"
goto a
:word
start winword
echo Sucsessfuly Opened File "winword.exe"
goto a
:ps
start Powershell
echo Sucsessfuly Opened File "Powershell.exe"
goto a
:mail
start outlook
echo Sucsessfuly Opened File "outlook.exe"
goto a
:shutdown
set /p timer= How Long Will It Be Until The Computer Is Shutdown:
set /p message= What Will Be The Message Displayed:
shutdown -s -t %timer% -c "%message%"
goto a
:restart
set /p timer2= How Long Will It Be Until The Computer Is Shutdown:
shutdown -r -t %timer2%
:cmdmode
title CMD
cmd
:powershellmode
title Powershell
powershell
:warningdel
echo Warning - This Command Is Dangerous, If This Is You Doing This And Not A Virus, Please Type The Code Below.
echo.
echo 4567277
echo.
set /p check=Type The Code Above:
if %check% == 4567277 goto del
if not %check% == 4567277 goto b
:b
echo Incorrect Code.
goto a
:del
set /p filedelete=Enter The File You Want To Delete:
del /f %filedelete%
goto a
:random
echo.
echo %random%
echo.
goto a
:version
echo.
echo Console 1.2 Beta
echo Beta 1
echo.
goto a