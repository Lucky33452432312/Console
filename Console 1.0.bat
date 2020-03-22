@echo off
:a
title Console 1.0
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
echo Unknown Command, Type Help For A List Of Commands
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
pause
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