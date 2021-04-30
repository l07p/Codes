# workspace.ps1 this file is collection of commands

###################################################
#### remove restricted ExecutionPolicy
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted

###################################################
#### start pgadmin
& "C:\Program Files\pgAdmin 4\v4\runtime\pgAdmin4.exe"

###################################################
#### go to working directory
Set-Location "C:\GIT\pi_server"

###################################################
#### open git bash
Start-Process "C:\Program Files\Git\git-bash.exe"

###################################################
#### start vscode here
Start-Process "C:\Program Files\Microsoft VS Code\Code.exe" -ArgumentList '.'

###################################################
#### open a cmd
Start-Process "C:\Windows\System32\cmd.exe"
