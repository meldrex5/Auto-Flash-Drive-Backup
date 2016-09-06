# Auto-Flash-Drive-Backup
A Windows Batch tool that automagically backs up a drive to a specific location.

Version 1.4.3
:: Created by Brendan Murphy 
:: To download the newest version of this tool go to https://github.com/meldrex5/Auto-Flash-Drive-Backup/archive/master.zip
::
:: INSTRUCTIONS
::
:: I. To use this program you must allow it to create "DriveValidation.txt" in the root on the
::	the drive you want to back up.  This program will allow the creation of the validation file
::	on ANY attached drive. Ensure the drive you create the file on is the one you intend to back up.
::	
::
:: II. When you are given this program it will likely not work the first time. This is
::	because you need to change the "User Variables" found below. All are case sensitive.
::
::		a) myComputerName: The name of your computer, program will only work on this account.
::			To find, right click on "This PC" in File Explorer and click on "Properties".
::				THIS MUST BE IN ALL CAPS 
::
::		b) myDriveLetter: The letter assigned to the drive you want to back up.
::			To find, look at the letter next to the drive name in File Explorer.
::			(Omit everything except the letter itself)
::
:: III. Files will be backed up according to date and time, to the following directory:
::
::		"C:\Users\USERNAME\Documents\Flash Drive Auto Backups\"DATE-TIME""
::
:: IV. If you decide to stop using this program, your backups will be left untouched and in exactly 
::	the same place.
::
::
:: Additional Info: This program assumes you will typically make no more than one backup per day.
::	If this is not the case, the program will work fine however it will be somewhat difficult
::	to locate a specific backup after a long time. If you need this program modified to better
::	suit your needs (or just need help using it), contact Brendan Murphy at:
::
::		btm5457@rit.edu OR btmextra@gmail.com 
::	
::	This program can be modified by the end user however it WILL stop working if you change something
:: 	and don't know what you're doing.  