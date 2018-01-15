a:49:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"PowerShell Funktionen";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"Dies ist eine Auflistung von Funktionen !";}i:2;i:38;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:79;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:79;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"1. prüft ob eine File oder Verzeichnis vorhanden ist  Ausgabe: True or False";}i:2;i:81;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:158;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:158;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:763:"
  function ExistFolderFile ($FileFolderValue , $FolderOrFile){
  #prüft ob ein Verzeichnis oder Folder Existiert
  # if (ExistFolderFile "C:\GOTHAER" "folder") {
  # Write-Host "es passiert was"
  # }
  #
  $FolderV = "folder", "Folder", "1"
  $FileV = "File", "file", "0"
  #Folder
  if($FolderV -contains $FolderOrFile) {
   if(Test-Path $FileFolderValue -pathType container) {
       Write-Host "exist "  $FileFolderValue
       $True
   } else {
       Write-Host "not exist " $FileFolderValue
       $False
          } 
  } 
  #File
  elseif($FileV -contains $FolderOrFile) {
    if(Test-Path $FileFolderValue) {
       Write-Host "exist "  $FileFolderValue
       $True
   } else {
       Write-Host "not exist " $FileFolderValue
       $False
         }
";}i:2;i:3;i:3;s:775:" powershell>
  function ExistFolderFile ($FileFolderValue , $FolderOrFile){
  #prüft ob ein Verzeichnis oder Folder Existiert
  # if (ExistFolderFile "C:\GOTHAER" "folder") {
  # Write-Host "es passiert was"
  # }
  #
  $FolderV = "folder", "Folder", "1"
  $FileV = "File", "file", "0"
  #Folder
  if($FolderV -contains $FolderOrFile) {
   if(Test-Path $FileFolderValue -pathType container) {
       Write-Host "exist "  $FileFolderValue
       $True
   } else {
       Write-Host "not exist " $FileFolderValue
       $False
          } 
  } 
  #File
  elseif($FileV -contains $FolderOrFile) {
    if(Test-Path $FileFolderValue) {
       Write-Host "exist "  $FileFolderValue
       $True
   } else {
       Write-Host "not exist " $FileFolderValue
       $False
         }
";}i:2;i:165;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:947;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:947;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"2. Diese Funktion erstellt ein Active Setup 
";}i:2;i:949;}i:14;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:747:"
  Function AddToActiveSetup {
    Param(
      [parameter(Mandatory = $true)]
        [String]$ActiveSetupUniqueName,
      [parameter(Mandatory = $true)]
        [String]$ActiveSetupStubPath,
      [parameter(Mandatory = $true)]
        [String]$ActiveSetupVersion
       )
    $ParentKey="HKLM:Software\Microsoft\Active Setup\Installed Components\"
    $Key=$ParentKey + "\" + $ActiveSetupUniqueName
    # Check for key
    if (!(Test-Path $Key)){
      New-Item -type Directory $($ParentKey + "\" + $ActiveSetupUniqueName)
    }
    else {
      write-host "Key exists"
    }
    Set-ItemProperty $($Key) -name "StubPath" -value $ActiveSetupStubPath
    Set-ItemProperty $($Key) -name "Version" -value $ActiveSetupVersion.Replace('.',',')
  }
";}i:2;i:3;i:3;s:759:" powershell>
  Function AddToActiveSetup {
    Param(
      [parameter(Mandatory = $true)]
        [String]$ActiveSetupUniqueName,
      [parameter(Mandatory = $true)]
        [String]$ActiveSetupStubPath,
      [parameter(Mandatory = $true)]
        [String]$ActiveSetupVersion
       )
    $ParentKey="HKLM:Software\Microsoft\Active Setup\Installed Components\"
    $Key=$ParentKey + "\" + $ActiveSetupUniqueName
    # Check for key
    if (!(Test-Path $Key)){
      New-Item -type Directory $($ParentKey + "\" + $ActiveSetupUniqueName)
    }
    else {
      write-host "Key exists"
    }
    Set-ItemProperty $($Key) -name "StubPath" -value $ActiveSetupStubPath
    Set-ItemProperty $($Key) -name "Version" -value $ActiveSetupVersion.Replace('.',',')
  }
";}i:2;i:999;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1765;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1765;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:"3. Diese Funktion setzt dauerhaft eine Umgebungsvarivable ";}i:2;i:1767;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1825;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1825;}i:20;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:484:"
   function SetPermamentEnvironmentVariables {
  <#
         .Synopsis
            Dieses Skript ändert eine Umgebungsvariablen 
         .Example
           "Modify_Environment_Variable.ps1" osver T6.1
           "Modify_Environment_Variable.ps1" <name> <value>
  #>
     param(
       [Parameter(Mandatory=$True)]
           [String]$VAR,
       [Parameter(Mandatory=$True)]
           [String]$OSVAL
  )
  [System.Environment]::SetEnvironmentVariable($VAR,$OSVAL, "Machine")
  }
";}i:2;i:3;i:3;s:496:" powershell>
   function SetPermamentEnvironmentVariables {
  <#
         .Synopsis
            Dieses Skript ändert eine Umgebungsvariablen 
         .Example
           "Modify_Environment_Variable.ps1" osver T6.1
           "Modify_Environment_Variable.ps1" <name> <value>
  #>
     param(
       [Parameter(Mandatory=$True)]
           [String]$VAR,
       [Parameter(Mandatory=$True)]
           [String]$OSVAL
  )
  [System.Environment]::SetEnvironmentVariable($VAR,$OSVAL, "Machine")
  }
";}i:2;i:1832;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"
4. Das folgende Skript prüft ob ";}i:2;i:2335;}i:22;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2369;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"regedit";}i:2;i:2370;}i:24;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2377;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" in einem Skript aufgerufen wurde ";}i:2;i:2378;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2412;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2412;}i:28;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:221:"
  Get-ChildItem -Recurse -Include @("*.sh","*.ps1","*.bat","*.cmd","*.vbs") | Select-String "regedit /s" | foreach-object {
     "Datei: " + $_.Path
     "Zeile No: " + $_.LineNumber
     "Zeile: " + $_.Line
     ""
  }
";}i:2;i:3;i:3;s:233:" powershell>
  Get-ChildItem -Recurse -Include @("*.sh","*.ps1","*.bat","*.cmd","*.vbs") | Select-String "regedit /s" | foreach-object {
     "Datei: " + $_.Path
     "Zeile No: " + $_.LineNumber
     "Zeile: " + $_.Line
     ""
  }
";}i:2;i:2419;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"
5. Bearbeitet eine Bioseinstellung (nur Lenovo)
";}i:2;i:2659;}i:30;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:605:"
$SATAControllerMode = (gwmi -class Lenovo_BiosSetting -namespace root\wmi | Where-Object  {$_.CurrentSetting.split(",",[StringSplitOptions]::RemoveEmptyEntries) -eq   "SATAControllerMode"}).CurrentSetting #| Format-List CurrentSetting
  if ($SATAControllerMode -like "SATAControllerMode,AHCI") {
   (gwmi -class Lenovo_SetBiosSetting -namespace root\wmi).SetBiosSetting("SATAControllerMode,Compatibility,VSmdXPC,ascii,us;")
   (gwmi -class Lenovo_SaveBiosSettings -namespace root\wmi).SaveBiosSettings("VSmdXPC,ascii,us")
   (gwmi -class Lenovo_SaveBiosSettings -namespace root\wmi).SaveBiosSettings
  }
";}i:2;i:3;i:3;s:617:" powershell>
$SATAControllerMode = (gwmi -class Lenovo_BiosSetting -namespace root\wmi | Where-Object  {$_.CurrentSetting.split(",",[StringSplitOptions]::RemoveEmptyEntries) -eq   "SATAControllerMode"}).CurrentSetting #| Format-List CurrentSetting
  if ($SATAControllerMode -like "SATAControllerMode,AHCI") {
   (gwmi -class Lenovo_SetBiosSetting -namespace root\wmi).SetBiosSetting("SATAControllerMode,Compatibility,VSmdXPC,ascii,us;")
   (gwmi -class Lenovo_SaveBiosSettings -namespace root\wmi).SaveBiosSettings("VSmdXPC,ascii,us")
   (gwmi -class Lenovo_SaveBiosSettings -namespace root\wmi).SaveBiosSettings
  }
";}i:2;i:2713;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:123:"
6. Diese Skript benennt den Administrator in admlocal um und schreibt Ihn in den AutoLogon für eine 1 malige Anmeldung. 
";}i:2;i:3337;}i:32;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:1758:"
  #beschreibung : Der admlocal wird 1 mal in den AutoLogon fersetzt um das Profile zu laden 
  #Version : 0.1
  #Datum : 30.10.2013
  #Der Administrator wird in admlocal umbenannt
  $oldName = "Administrator"
  $newName="admlocal"
  $user = Get-WMIObject Win32_UserAccount -Filter "Name='$oldName'"
  $result = $user.Rename($newName)
  #####################################################################
  # admlocal wird als WinLogon User gesetzt mit dem Passwort welches beim Deployment vergeben wurden ist (wird von der Policy geändert)
  New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\winlogon" -Name "AutoLogonCount" -PropertyType "DWORD" -Value "1"
  New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\winlogon" -Name "AutoAdminLogon" -PropertyType "DWORD" -Value "1"
  New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\winlogon" -Name "DefaultUserName" -PropertyType "String" -Value "admlocal"
  New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\winlogon" -Name "DefaultPassword" -PropertyType "String" -Value "xxxxxxxxxxxxxxxx"
  New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "ShutdownAdmlocal" -PropertyType "String" -Value "cmd /c reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v ShutdownAdmlocal /f & logoff"
  ################################
  #nach erfolgreichen abschluß meldet sich der User Wieder ab 
  $acl = Get-Acl "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
  $rule = New-Object System.Security.AccessControl.RegistryAccessRule ("admlocal","FullControl","Allow")
  $acl.SetAccessRule($rule)
  $acl |Set-Acl -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
";}i:2;i:3;i:3;s:1770:" powershell>
  #beschreibung : Der admlocal wird 1 mal in den AutoLogon fersetzt um das Profile zu laden 
  #Version : 0.1
  #Datum : 30.10.2013
  #Der Administrator wird in admlocal umbenannt
  $oldName = "Administrator"
  $newName="admlocal"
  $user = Get-WMIObject Win32_UserAccount -Filter "Name='$oldName'"
  $result = $user.Rename($newName)
  #####################################################################
  # admlocal wird als WinLogon User gesetzt mit dem Passwort welches beim Deployment vergeben wurden ist (wird von der Policy geändert)
  New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\winlogon" -Name "AutoLogonCount" -PropertyType "DWORD" -Value "1"
  New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\winlogon" -Name "AutoAdminLogon" -PropertyType "DWORD" -Value "1"
  New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\winlogon" -Name "DefaultUserName" -PropertyType "String" -Value "admlocal"
  New-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\winlogon" -Name "DefaultPassword" -PropertyType "String" -Value "xxxxxxxxxxxxxxxx"
  New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "ShutdownAdmlocal" -PropertyType "String" -Value "cmd /c reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v ShutdownAdmlocal /f & logoff"
  ################################
  #nach erfolgreichen abschluß meldet sich der User Wieder ab 
  $acl = Get-Acl "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
  $rule = New-Object System.Security.AccessControl.RegistryAccessRule ("admlocal","FullControl","Allow")
  $acl.SetAccessRule($rule)
  $acl |Set-Acl -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
";}i:2;i:3465;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"
7. SID auslesen 
";}i:2;i:5242;}i:34;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:59:"
  ([WMI]"root\cimv2:win32_sid.sid='S-1-1-0'").accountname
";}i:2;i:3;i:3;s:71:" powershell>
  ([WMI]"root\cimv2:win32_sid.sid='S-1-1-0'").accountname
";}i:2;i:5265;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"
8. Auslesen des Skriptpfades 
";}i:2;i:5343;}i:36;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:140:"
  function ScriptDirectory{
      $Invocation = (Get-Variable MyInvocation -Scope 1).Value
      Split-Path $Invocation.MyCommand.Path
  }
";}i:2;i:3;i:3;s:152:" powershell>
  function ScriptDirectory{
      $Invocation = (Get-Variable MyInvocation -Scope 1).Value
      Split-Path $Invocation.MyCommand.Path
  }
";}i:2;i:5379;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"
9. löscht das %temp% Verzeichnis aller User 
";}i:2;i:5538;}i:38;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:5341:"
   #start-transcript -path "$env:SYSTEMROOT\SCCM\Logs\GoSYS_cleanUserTempFolderErrorLog_100.log"
   function Get-Profile {
        <#
       .Synopsis
              Returns information of profiles for each ever logged on or specified user.
       .Input
               System.String
       .Output
               Objects of profile informations
       .Parameter SID
               Only build results for this list of SIDs.
        .Notes 
               Author:  Daniel Baumann <daniel.baumann@t4m.de>
               Date:    2013-08-21
               Version: 0.2013.8.21
           #>
           param(
               [Parameter(Position=0,ValueFromPipeline=$true)]
               [String[]]$SID
            )
                Begin { $Iam = $MyInvocation.MyCommand.Name; Write-Verbose "$Iam:: Function started" }
                Process {
                $CurrentlyLoggedOnUsers = `
                ([Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey([Microsoft.Win32.RegistryHive]::Users, $env:ComputerName)).GetSubKeyNames() | `
                Where-Object {($_ -notmatch "_Classes$") -and ($_ -notlike ".DEFAULT") -and ($_ -notmatch "^S-1-5-\d[18|19|20]$")}
                $ProfileListRegRoot = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\ProfileList'
               Get-ChildItem $ProfileListRegRoot | `
               ForEach-Object { $_.PSChildName } | `
               Where-Object {($_ -notmatch "^S-1-5-\d[18|19|20]$")} | `
               ForEach-Object {
                       if (($SID) -and ($SID -notcontains $_)) { return }
                       $DomainUser = ([System.Security.Principal.SecurityIdentifier]$_).Translate([System.Security.Principal.NTAccount])
                       $DomainName, $UserName = $DomainUser -Split "\\"
                       $ProfilePath = (Get-ItemProperty -Path ($ProfileListRegRoot + '\' + $_) -Name ProfileImagePath).ProfileImagePath
                       if (Test-Path $ProfilePath) {
                           $ProfilePathExists = $True
                       } else {
                           $ProfilePathExists = $False
                       }
                       if ($CurrentlyLoggedOnUsers -contains $_) {
                           $IsLoggedOn = $True
                       } else {
                           $IsLoggedOn = $False
                       }
                       if (Test-Path ($ProfilePath + "\NTUSER.DAT.LOG")) {
                               $LastLogonDate = (Get-ItemProperty ($ProfilePath + "\NTUSER.DAT.LOG")).LastWriteTime
                       } else {
                               $LastLogonDate = $Null
                       }
                       Invoke-Expression (
                                       'New-Module -asCustomObject {' +
                                       '$SID = "' + $_ + '";' +
                                       '$DomainUser = "' + $DomainUser + '";' +
                                       '$DomainName = "' + $DomainName + '";' +
                                       '$UserName = "' + $UserName + '";' +
                                       '$ProfilePath = "' + $ProfilePath + '";' +
                                       '$ProfilePathExists = "' + $ProfilePathExists + '";' +
                                       '$IsLoggedOn = "' + $IsLoggedOn + '";' +
                                       '$LastLogonDate = "' + $LastLogonDate + '";' +
                                       'Export-ModuleMember -Variable *;' +
                         '}'
                     )
                           if (($SID) -and ($SID -contains $_)) { break }
                 }
      }
   End { Write-Verbose "$Iam:: Function ended" }
   }
   new-eventlog -logname 'CleanUserTempFolder' -Source 'CleanUserTempFolder PowerShell Skript' -ErrorAction SilentlyContinue
   timeout 3 2>&1 | Out-Null
   $Daysback = "-0"
   $CurrentDate = Get-Date
    write-eventlog -logname 'CleanUserTempFolder' -source 'CleanUserTempFolder PowerShell Skript' -eventID 1 -entrytype Information -message "Beginne Benutzer-Temp-Ordner zu leeren." -category 1 -rawdata 10,20
      $DatetoDelete = $CurrentDate.AddDays($Daysback)
       timeout 1 2>&1 | Out-Null
      [string[]]$LISTE = foreach ($a in (Get-Profile).UserName) {Get-ChildItem "C:\Users\$a\AppData\Local\Temp" | Where-Object { $_.LastWriteTime -lt $DatetoDelete } |select name}
      $EVENTLIST = $LISTE.Replace('@{',).Replace('}',)
      if (!($lastExitCode -eq 0)) {
         write-eventlog -logname 'CleanUserTempFolder' -source 'CleanUserTempFolder PowerShell Skript' -eventID 19 -entrytype Information -message "Es müssen keine Daten gelöscht werden." -category 1 -rawdata 10,20
      exit 
   }
  write-eventlog -logname 'CleanUserTempFolder' -source 'CleanUserTempFolder PowerShell Skript' -eventID 1 -entrytype Warning -message "Diese Dateien und Ordner werden gelöscht: $EVENTLIST "  -category 3 -rawdata 10,20
  foreach ($a in (Get-Profile).UserName) {Get-ChildItem "C:\Users\$a\AppData\Local\Temp" | Where-Object { $_.LastWriteTime -lt $DatetoDelete } |Remove-Item  -Recurse  2>&1 | Out-Null}
  timeout 1 2>&1 | Out-Null
  write-eventlog -logname 'CleanUserTempFolder' -source 'CleanUserTempFolder PowerShell Skript' -eventID 19 -entrytype Information -message "Benutzer-Temp-Ordner leeren ist beendet." -category 1 -rawdata 10,20
  #stop-transcript

";}i:2;i:3;i:3;s:5353:" powershell>
   #start-transcript -path "$env:SYSTEMROOT\SCCM\Logs\GoSYS_cleanUserTempFolderErrorLog_100.log"
   function Get-Profile {
        <#
       .Synopsis
              Returns information of profiles for each ever logged on or specified user.
       .Input
               System.String
       .Output
               Objects of profile informations
       .Parameter SID
               Only build results for this list of SIDs.
        .Notes 
               Author:  Daniel Baumann <daniel.baumann@t4m.de>
               Date:    2013-08-21
               Version: 0.2013.8.21
           #>
           param(
               [Parameter(Position=0,ValueFromPipeline=$true)]
               [String[]]$SID
            )
                Begin { $Iam = $MyInvocation.MyCommand.Name; Write-Verbose "$Iam:: Function started" }
                Process {
                $CurrentlyLoggedOnUsers = `
                ([Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey([Microsoft.Win32.RegistryHive]::Users, $env:ComputerName)).GetSubKeyNames() | `
                Where-Object {($_ -notmatch "_Classes$") -and ($_ -notlike ".DEFAULT") -and ($_ -notmatch "^S-1-5-\d[18|19|20]$")}
                $ProfileListRegRoot = 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\ProfileList'
               Get-ChildItem $ProfileListRegRoot | `
               ForEach-Object { $_.PSChildName } | `
               Where-Object {($_ -notmatch "^S-1-5-\d[18|19|20]$")} | `
               ForEach-Object {
                       if (($SID) -and ($SID -notcontains $_)) { return }
                       $DomainUser = ([System.Security.Principal.SecurityIdentifier]$_).Translate([System.Security.Principal.NTAccount])
                       $DomainName, $UserName = $DomainUser -Split "\\"
                       $ProfilePath = (Get-ItemProperty -Path ($ProfileListRegRoot + '\' + $_) -Name ProfileImagePath).ProfileImagePath
                       if (Test-Path $ProfilePath) {
                           $ProfilePathExists = $True
                       } else {
                           $ProfilePathExists = $False
                       }
                       if ($CurrentlyLoggedOnUsers -contains $_) {
                           $IsLoggedOn = $True
                       } else {
                           $IsLoggedOn = $False
                       }
                       if (Test-Path ($ProfilePath + "\NTUSER.DAT.LOG")) {
                               $LastLogonDate = (Get-ItemProperty ($ProfilePath + "\NTUSER.DAT.LOG")).LastWriteTime
                       } else {
                               $LastLogonDate = $Null
                       }
                       Invoke-Expression (
                                       'New-Module -asCustomObject {' +
                                       '$SID = "' + $_ + '";' +
                                       '$DomainUser = "' + $DomainUser + '";' +
                                       '$DomainName = "' + $DomainName + '";' +
                                       '$UserName = "' + $UserName + '";' +
                                       '$ProfilePath = "' + $ProfilePath + '";' +
                                       '$ProfilePathExists = "' + $ProfilePathExists + '";' +
                                       '$IsLoggedOn = "' + $IsLoggedOn + '";' +
                                       '$LastLogonDate = "' + $LastLogonDate + '";' +
                                       'Export-ModuleMember -Variable *;' +
                         '}'
                     )
                           if (($SID) -and ($SID -contains $_)) { break }
                 }
      }
   End { Write-Verbose "$Iam:: Function ended" }
   }
   new-eventlog -logname 'CleanUserTempFolder' -Source 'CleanUserTempFolder PowerShell Skript' -ErrorAction SilentlyContinue
   timeout 3 2>&1 | Out-Null
   $Daysback = "-0"
   $CurrentDate = Get-Date
    write-eventlog -logname 'CleanUserTempFolder' -source 'CleanUserTempFolder PowerShell Skript' -eventID 1 -entrytype Information -message "Beginne Benutzer-Temp-Ordner zu leeren." -category 1 -rawdata 10,20
      $DatetoDelete = $CurrentDate.AddDays($Daysback)
       timeout 1 2>&1 | Out-Null
      [string[]]$LISTE = foreach ($a in (Get-Profile).UserName) {Get-ChildItem "C:\Users\$a\AppData\Local\Temp" | Where-Object { $_.LastWriteTime -lt $DatetoDelete } |select name}
      $EVENTLIST = $LISTE.Replace('@{',).Replace('}',)
      if (!($lastExitCode -eq 0)) {
         write-eventlog -logname 'CleanUserTempFolder' -source 'CleanUserTempFolder PowerShell Skript' -eventID 19 -entrytype Information -message "Es müssen keine Daten gelöscht werden." -category 1 -rawdata 10,20
      exit 
   }
  write-eventlog -logname 'CleanUserTempFolder' -source 'CleanUserTempFolder PowerShell Skript' -eventID 1 -entrytype Warning -message "Diese Dateien und Ordner werden gelöscht: $EVENTLIST "  -category 3 -rawdata 10,20
  foreach ($a in (Get-Profile).UserName) {Get-ChildItem "C:\Users\$a\AppData\Local\Temp" | Where-Object { $_.LastWriteTime -lt $DatetoDelete } |Remove-Item  -Recurse  2>&1 | Out-Null}
  timeout 1 2>&1 | Out-Null
  write-eventlog -logname 'CleanUserTempFolder' -source 'CleanUserTempFolder PowerShell Skript' -eventID 19 -entrytype Information -message "Benutzer-Temp-Ordner leeren ist beendet." -category 1 -rawdata 10,20
  #stop-transcript

";}i:2;i:5591;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"
10. Die folgende Funktion fragt eine Datenbank ab.
";}i:2;i:10951;}i:40;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:2368:"
  Function MSSQLQuery {
     <#
           .Synopsis
              Ruft ein T-SQL Skript in der PowerShell auf  !!
           .PARAMETER
              -SQLServer   <SQLServerName> angabe des SQL-Servers
              -SQLDBName   <DatenbankName> angabe der Datenbank
              -SQLQuery    <T-SQL Skript>  angabe des T-SQL Skriptes einfache abfrage select * from 'mamam' 
              -UserName    <Username>      angabe des Datenbank Benutzers (optinal)
              -Password    <User Passwort> angabe des Passwortes des Datenbank Benutzers (optional)
           .Example
              MSSQLQuery -SQLServer "klnsv838" -SQLDBName "RolloutWin7" -SQLQuery "select * from Computers where ComputerName like 'STGWSG13%'" -UserName "sbquery" -password 'xxxxxx'
              MSSQLQuery -SQLServer "klnsv838" -SQLDBName "RolloutWin7" -SQLQuery "select * from Computers where ComputerName like 'KLNWSA31'"
              MSSQLQuery -SQLServer "klnsv838" -SQLDBName "RolloutWin7" -SQLQuery "select * from Computers where ComputerName like 'KLNWSA31'"            
              $var = (MSSQLQuery -SQLServer "klnsv838" -SQLDBName "SMS_GOP" -SQLQuery "SELECT NewHash FROM SMSPackages WHERE PkgID='GOP009CC'" -UserName "sbquery" -password 'xxxxx').NewHash
    #>
      Param(
        [parameter(Mandatory = $true)]
          [String]$SQLServer,
        [parameter(Mandatory = $true)]
          [String]$SQLDBName,
        [parameter(Mandatory = $true)]
          [String]$SQLQuery,
        [parameter(Mandatory = $false)]
          [String]$UserName,
        [parameter(Mandatory = $false)]
          [String]$password
         )
  $SqlConnection = New-Object System.Data.SqlClient.SqlConnection
  if (!$UserName) {
      $SqlConnection.ConnectionString = "Server = $SQLServer; Database = $SQLDBName; Integrated Security = True;"
  }else{
      $SqlConnection.ConnectionString = "Server = $SQLServer; Database = $SQLDBName; User ID=$UserName; Password=$password;" # ohne User Integrated Security = True;
  }
  $SqlCmd = New-Object System.Data.SqlClient.SqlCommand
  $SqlCmd.CommandText = $SqlQuery
  $SqlCmd.Connection = $SqlConnection
  $SqlAdapter = New-Object System.Data.SqlClient.SqlDataAdapter
  $SqlAdapter.SelectCommand = $SqlCmd
  $DataSet = New-Object System.Data.DataSet
  $SqlAdapter.Fill($DataSet)
  $SqlConnection.Close()
  clear
  ($DataSet.Tables[0])
   }
";}i:2;i:3;i:3;s:2380:" powershell>
  Function MSSQLQuery {
     <#
           .Synopsis
              Ruft ein T-SQL Skript in der PowerShell auf  !!
           .PARAMETER
              -SQLServer   <SQLServerName> angabe des SQL-Servers
              -SQLDBName   <DatenbankName> angabe der Datenbank
              -SQLQuery    <T-SQL Skript>  angabe des T-SQL Skriptes einfache abfrage select * from 'mamam' 
              -UserName    <Username>      angabe des Datenbank Benutzers (optinal)
              -Password    <User Passwort> angabe des Passwortes des Datenbank Benutzers (optional)
           .Example
              MSSQLQuery -SQLServer "klnsv838" -SQLDBName "RolloutWin7" -SQLQuery "select * from Computers where ComputerName like 'STGWSG13%'" -UserName "sbquery" -password 'xxxxxx'
              MSSQLQuery -SQLServer "klnsv838" -SQLDBName "RolloutWin7" -SQLQuery "select * from Computers where ComputerName like 'KLNWSA31'"
              MSSQLQuery -SQLServer "klnsv838" -SQLDBName "RolloutWin7" -SQLQuery "select * from Computers where ComputerName like 'KLNWSA31'"            
              $var = (MSSQLQuery -SQLServer "klnsv838" -SQLDBName "SMS_GOP" -SQLQuery "SELECT NewHash FROM SMSPackages WHERE PkgID='GOP009CC'" -UserName "sbquery" -password 'xxxxx').NewHash
    #>
      Param(
        [parameter(Mandatory = $true)]
          [String]$SQLServer,
        [parameter(Mandatory = $true)]
          [String]$SQLDBName,
        [parameter(Mandatory = $true)]
          [String]$SQLQuery,
        [parameter(Mandatory = $false)]
          [String]$UserName,
        [parameter(Mandatory = $false)]
          [String]$password
         )
  $SqlConnection = New-Object System.Data.SqlClient.SqlConnection
  if (!$UserName) {
      $SqlConnection.ConnectionString = "Server = $SQLServer; Database = $SQLDBName; Integrated Security = True;"
  }else{
      $SqlConnection.ConnectionString = "Server = $SQLServer; Database = $SQLDBName; User ID=$UserName; Password=$password;" # ohne User Integrated Security = True;
  }
  $SqlCmd = New-Object System.Data.SqlClient.SqlCommand
  $SqlCmd.CommandText = $SqlQuery
  $SqlCmd.Connection = $SqlConnection
  $SqlAdapter = New-Object System.Data.SqlClient.SqlDataAdapter
  $SqlAdapter.SelectCommand = $SqlCmd
  $DataSet = New-Object System.Data.DataSet
  $SqlAdapter.Fill($DataSet)
  $SqlConnection.Close()
  clear
  ($DataSet.Tables[0])
   }
";}i:2;i:11008;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13395;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:13395;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"Client einer Collection hinzufügen. 
";}i:2;i:13398;}i:44;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:120:"
Add-CMDeviceCollectionDirectMembershipRule -CollectionId UBA0001B -ResourceId (Get-CMDevice -name PC62479).Res
ourceID
";}i:2;i:3;i:3;s:132:" powershell>
Add-CMDeviceCollectionDirectMembershipRule -CollectionId UBA0001B -ResourceId (Get-CMDevice -name PC62479).Res
ourceID
";}i:2;i:13441;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:13580;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13580;}i:47;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:13580;}i:48;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:13580;}}