@echo off

:: Version 1.3.1
:: Created by Brendan Murphy 
::
:: INSTRUCTIONS
::
:: I. To use this program you must create a .txt file called "DriveValidation.txt" in the root 
::	directory of the drive.
::
:: II. When you are given this program it will likely not work the first time.  This is
::	because you need to set the "User Variables" found below.  All ARE case sensitive.
::		a) myAccountName: The name of your account, program will only work on this account.

::		b) myComputerName: The name of your computer, program will only work on this account.
::			To find, right click on "This PC" in File Explorer and click on "Properties"
::				THIS MUST BE CAPILALIZED

::		c) myDriveLetter: The letter assigned to the drive you want to back up.
::			To find, look at the letter next to the drive name in File Explorer.
::			(Omit everything except the letter itself)
::
:: III. Files will be backed up according to date and time, to the following directory:
::
::		"C:\Users\USERNAME\Documents\Flash Drive Auto Backups\DATE-TIME"
::
:: IV. If you decide to stop using this program, your backups will be left untouched and in exactly 
::	the same place.
::
::
:: Additional Info: This program assumes you will typically make no more than one backup per day.
::	If this is not the case, the program will work fine however it will be somewhat difficult
::	to locate a specific backup after a long time.  If you need this program modified to better
::	suit your needs (or just need help using it), contact Brendan Murphy at:
::
::		btm5457@rit.edu OR btmextra@gmail.com 
::	
::	This program can be modified by the end user however it WILL stop working if you change something
:: 	and don't know what you're doing.  


::SETTINGS

::User Variables: Type - Case Sensitive

set myAccountName= btm71
set myComputerName= ULTRAXPS
set myDriveLetter= d



:PROGRAM

echo Open this file in Notepad to read Instructions and Change Settings
:Device Validation
if %computername% == %myComputerName% echo Computer Validation: PASSED
if not %computername% == %myComputerName% echo Computer Validation: FAILED & goto failure 

if %username% == %myAccountName% echo Account Validation: PASSED
if not %username% == %myAccountName% echo Account Validation: FAILED & goto failure 


if exist %myDriveLetter%:\DriveValidation.txt echo Drive Validation: PASSED
if not exist %myDriveLetter%:\DriveValidation.txt echo Drive Validation: FAILED & goto failure


:backup

::Date/Time Entry
echo ----------
echo Enter Date and Millitary Time in the following format: MM-DD-YY---HH-MM
echo If you enter it wrong, you'll have to deal with it later.
set /p datetime= 


::This section creates the directory to backup to based on current date and 
::  time THEN copys files from drive to the new directory.

mkdir C:\Users\%username%\Documents\"Flash Drive Auto Backups"\%datetime%
xcopy %myDriveLetter%:\ C:\Users\%username%\Documents\"Flash Drive Auto Backups"\%datetime% /E
goto end




:failure
echo ----------
echo There was a failure somwhere in the backup process.  Ensure drive is inserted and try again.
pause

:end
 