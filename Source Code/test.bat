@echo off
cls

Title Klocks - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"

setlocal enabledelayedexpansion
set sign1=+
set sign2=-
set sign3=+

set /p n=Enter no. of toggles: 
for /l %%a in (1,1,!n!) do (
	if /i "!sign1!" == "+" (Set sign1=-) else (set sign1=+)
	if /i "!sign2!" == "+" (Set sign2=-) else (set sign2=+)
	if /i "!sign3!" == "+" (Set sign3=-) else (set sign3=+)
	klocks !sign1!n !sign2!c !sign3!s
	timeout /t 1 >nul
)
exit /b