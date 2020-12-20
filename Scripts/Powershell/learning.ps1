<#
.SYNOPSIS
    This script/function does - What? Learning

.DESCRIPTION
    A more detailed description of why and how the function works.

.PARAMETER DemoParam1
    The parameter DemoParam1 is used to define the value of blah and also blah.

.PARAMETER DemoParam2
    The parameter DemoParam2 is used to define the value of blah and also blah.

.EXAMPLE
    The example below does blah
    PS C:\> Example

.EXAMPLE
    Another example

.NOTES
    Author: Name
    Last Edit: yyyy-mm-dd
    Version 1.0 - initial release of blah
    Version 1.1 - update for blah

#>
<#
 get date for foldername
#>
$Date = Get-Date -Format "yyyyMMdd" 
$backupFolder = "KMLicenseTomcat"
$backupFolder = "$Date$backupFolder"
Write-Host $backupFolder
<#
Arbeiten mit Dateien und Ordnern
#>
# Get-ChildItem -Path .\ -Force -Recurse
# Get-ChildItem -Path $env:ProgramFiles -Recurse -Include *.exe | Where-Object -FilterScript {($_.LastWriteTime -gt '2020-10-01') -and ($_.Length -ge 1mb) -and ($_.Length -le 10mb)}

<#
Eratellen von Dateien und Ordnern
#>
$newPath = 'C:\tmp\' + $backupFolder
New-Item -Path $newPath -ItemType Directory

<############################### 
Kopieren von Dateien und Ordner
1. "<TomcatInstallDir>\conf\context.xml"
2. "<TomcatInstallDir>\conf\server.xml"
3. "<TomcatInstallDir>\secrets\"
4. "<TomcatInstallDir>\webapps\kmlicenser\"
5. "<TomcatInstallDir>\webapps\license-server\"
6. "<TomcatInstallDir>\webapps\license-server.war"
7. "<TomcatInstallDir>\webapps\ConsoleLicenser.exe"
"<TomcatInstallDir>\webapps\licGenerator.exe"
################################>
Copy-Item -Path "I:\arbeit\Tomcat 9.0\conf\context.xml" -Destination "C:\tmp\context.xml" -Force
Copy-Item -Path "I:\arbeit\Tomcat 9.0\conf\server.xml" -Destination "C:\tmp\server.xml" -Force
Copy-Item "I:\arbeit\Tomcat 9.0\secrets" -Recurse "C:\tmp\backup_of_tomcat\secrets" -Force

<#
 remove backup files and folders
#>
#$fso = New-Object -ComObject scripting.filesystemobject
#$fso.DeleteFolder("C:\tmp\backup_of_tomcat")
