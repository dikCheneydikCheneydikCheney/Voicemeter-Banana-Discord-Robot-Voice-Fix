# Voicemeter Banana Discord Mic Fix

I've always had this weird issue with Discord and a robotic mic. This happens due to Audiodg.exe, 
setting the Class to 'RealTime' and the Affinity to '1' fixes the issue. 

Basically, this is just a powershell script to fix the issue.

Throw this bad MFer into Task Scheduler (yeah windows im not on arch yet) and watch the 4 lines of elementary grade ""Code"" do it's work. 

MAKE SURE IN POWERSHELL YOU RUN THIS COMMAND "Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser" IF NOT YOU CANT RUN ANY POWERSHELL SCRIPTS

## Notes for Task Scheduler:

When creating the Task Schedule for this script, in "Action" make sure you point the Program/script to "Powershell.exe". This ensures the script is ran via powershell.

Make sure the "Action" is also set to "Start a program"

From there, in the "Add Arguments" tab of the action. Paste the following: "-Executionpolicy Bypass -WindowStyle hidden -File 'wherever directory and name of script'"

Congrats! It is now up and working for you :) 
