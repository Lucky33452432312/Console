@echo off
if exist %cd%\error.vbs start error.vbs
if not exist %cd%\error.vbs echo Incorrect code
pause