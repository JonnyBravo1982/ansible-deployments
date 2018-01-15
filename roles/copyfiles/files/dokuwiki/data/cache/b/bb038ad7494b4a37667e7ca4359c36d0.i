a:55:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:90:"Hier eine kleine Auflistung aller geprüften PowerShell Kommandos im Bezug auf SCCM 2012. ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:91;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:91;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"1. Dieses Beispiel listet alle Applikationsnamen auf  
";}i:2;i:93;}i:6;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:42:"
(Get-CMApplication).LocalizedDisplayName
";}i:2;i:3;i:3;s:54:" powershell>
(Get-CMApplication).LocalizedDisplayName
";}i:2;i:153;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:214;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:214;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Links : ";}i:2;i:216;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:224;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:224;}i:12;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:30:"http://cm12sdk.net/?page_id=10";i:1;N;}i:2;i:226;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:260;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:260;}i:15;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:57:"https://technet.microsoft.com/en-us/library/jj821831.aspx";i:1;N;}i:2;i:263;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:324;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:324;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"Content aktualisieren auf allen Pakete ";}i:2;i:326;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:365;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:365;}i:21;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:596:" 
try
{
    Get-Wmiobject -Namespace "root\SMS\Site_P01" -Class SMS_Application -Filter "isLatest='true' and isExpired='false'" | foreach{
           $name = $_.LocalizedDisplayName
           echo "Application : $name"
           $dptypes = Get-CMDeploymentType -ApplicationName "$name"
           foreach ($dpt in $dptypes){
                $dptname = $dpt.LocalizedDisplayName
                echo "Deployment Type: $dptname"
                Update-CMDistributionPoint -ApplicationName "$name" -DeploymentTypeName "$dptname"
                }
           }
}
catch
{
    $_.Exception.Message
}
";}i:2;i:3;i:3;s:608:" powershell> 
try
{
    Get-Wmiobject -Namespace "root\SMS\Site_P01" -Class SMS_Application -Filter "isLatest='true' and isExpired='false'" | foreach{
           $name = $_.LocalizedDisplayName
           echo "Application : $name"
           $dptypes = Get-CMDeploymentType -ApplicationName "$name"
           foreach ($dpt in $dptypes){
                $dptname = $dpt.LocalizedDisplayName
                echo "Deployment Type: $dptname"
                Update-CMDistributionPoint -ApplicationName "$name" -DeploymentTypeName "$dptname"
                }
           }
}
catch
{
    $_.Exception.Message
}
";}i:2;i:372;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:987;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:987;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"Dieses Skript verteilt den Content auf eine DistributionGroup ";}i:2;i:990;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1052;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1052;}i:27;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:582:"
    Get-Wmiobject -Namespace "root\SMS\Site_S01" -Class SMS_Application -Filter "isLatest='true' and isExpired='false'" | foreach{
           $name = $_.LocalizedDisplayName
           echo "Application : $name"
           $dptypes = Get-CMDeploymentType -ApplicationName "$name"
           foreach ($dpt in $dptypes){
                $dptname = $dpt.LocalizedDisplayName
               # echo "Deployment Type: $dptname"
                Start-CMContentDistribution -ApplicationName "$name" -DistributionPointGroupName "LRA"
                }
           }
    $_.Exception.Message
";}i:2;i:3;i:3;s:594:" powershell>
    Get-Wmiobject -Namespace "root\SMS\Site_S01" -Class SMS_Application -Filter "isLatest='true' and isExpired='false'" | foreach{
           $name = $_.LocalizedDisplayName
           echo "Application : $name"
           $dptypes = Get-CMDeploymentType -ApplicationName "$name"
           foreach ($dpt in $dptypes){
                $dptname = $dpt.LocalizedDisplayName
               # echo "Deployment Type: $dptname"
                Start-CMContentDistribution -ApplicationName "$name" -DistributionPointGroupName "LRA"
                }
           }
    $_.Exception.Message
";}i:2;i:1059;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1660;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1660;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:81:"PowerShell module sauber importieren (nur wenn die Admin Konsole installiert ist)";}i:2;i:1662;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1743;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1743;}i:33;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:90:"
Import-Module (Join-Path $(Split-Path $env:SMS_ADMIN_UI_PATH) ConfigurationManager.psd1)
";}i:2;i:3;i:3;s:102:" powershell>
Import-Module (Join-Path $(Split-Path $env:SMS_ADMIN_UI_PATH) ConfigurationManager.psd1)
";}i:2;i:1750;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1859;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1859;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"Dieses Beispiel liest eine XML File aus und erstellt eine Applikation im SCCM !!";}i:2;i:1862;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1942;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1942;}i:39;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:4229:"if (((get-host).Version).Major -eq 2) {
    $PSScriptRoot = Split-Path -Parent -Path  $MyInvocation.MyCommand.Definition
}
$XMLFile  = "$PSScriptRoot\Application.xml"
if (-not (Test-Path $XMLFile)){
 throw "Application.xml not exists"
}
##Set variables####################################################
write-host "Modify the xml ;) !!"
notepad "$XMLFile"
write-host "save the XML"
timeout 5
Wait-Process -Name "notepad"
$Data = [Xml] (Get-Content "$XMLFile")
# Read XML and set Variables 
($Data).ApplicationProperty|ForEach-Object {
         $Vendor = $_.Vendor
         $Product = $_.Product 
         $Version = $_.Version
         $Revision = $_.Revision
         $EXECUTEFile = $_.InstallFile
         $EXECuteFileArgument = $_.InstallArguments
         $UnInstallA = $_.UnInstallSetup
         $UnInstallArgument = $_.UnInstallArguements
         $ARPPATH = $_.ARPPath
         $ARCH = $_.ARCH
         $LANG = $_.LANG
   }
$SourceFolder = Read-Host 'What is the Source Folder?'
$SourceFolderSCCMROOT = "\\teg.teda\admin\SCCM\SD\Applications"
$FolderName = "$Vendor" + "_" + "$Product" + "_" + "$Version" + "_" + "$ARCH" + "_" + "$LANG_$Revision"
$ApplicationName = "$Product $Version $Lang $Revision"
$FolderName
New-Item "$SourceFolderSCCMROOT\$FolderName" -type directory
New-Item "$SourceFolderSCCMROOT\$FolderName\approved" -type directory
Copy-Item "$XMLFile" "$SourceFolderSCCMROOT\$FolderName\"  -force
Copy-Item "$PSScriptRoot\Wrapper.ps1" "$SourceFolderSCCMROOT\$FolderName\"  -force  
Copy-Item "$SourceFolder\*" "$SourceFolderSCCMROOT\$FolderName\approved" -Recurse -Force
########################################################################################################################################
Import-Module (Join-Path $(Split-Path $env:SMS_ADMIN_UI_PATH) ConfigurationManager.psd1)
cd "000:"
New-CMApplication -Name "$ApplicationName" -Description "create_from_Script" -Publisher "$Vendor" -SoftwareVersion "$Version"

$scriptDetection = @'
$pagefile = Get-WmiObject -Class Win32_PageFileSetting
$AutomaticManagePageFile = Get-WmiObject -Class Win32_ComputerSystem 
if (($pagefile.InitialSize -eq 1024) -and ($pagefile.MaximumSize -eq 2048) -and ($AutomaticManagePageFile.AutomaticManagedPagefile -eq $false))
{
    Write-host "Installed"
}
else
{
}
'@

$DeploymentTypeHash = @{
                    ManualSpecifyDeploymentType = $true #Yes we are going to manually specify the Deployment type
                    Applicationname = "$ApplicationName" #Application Name 
                   # Applicationname = "DymoLabelmanager 1.73 ENG 00" #Application Name 
                    DeploymentTypeName = "Installation"    #Name given to the Deployment Type
                    DetectDeploymentTypeByCustomScript = $true # Yes deployment type will use a custom script to detect the presence of this 
                    ScriptInstaller = $true # Yes this is a Script Installer
                    ScriptType = 'PowerShell' # yep we will use PowerShell Script
                    ScriptContent = "$scriptDetection"  # Use the earlier defined here string
                    AdministratorComment = "created from Skript"
                   # ContentLocation  = "$SourceFolderSCCMROOT\$FolderName" 
                    ContentLocation = "$SourceFolderSCCMROOT\$FolderName"  # NAL path to the package
                    InstallationProgram ='powershell.exe -ExecutionPolicy Bypass -File "Wrapper.ps1"'  #Command line to Run for install
                    UninstallProgram ='powershell.exe -ExecutionPolicy Bypass -File "Wrapper.ps1" -uninstall' #Command line to Run for un-Install
                    RequiresUserInteraction = $false  #Don't let User interact with this
                    InstallationBehaviorType = 'InstallForSystem' # Targeting Devices here
                    InstallationProgramVisibility = 'Hidden'  # Hide the PowerShell Console
                    LogonRequirementType = 'WhereOrNotUserLoggedOn'
                    }
Add-CMDeploymentType @DeploymentTypeHash 
####################################################################################################
$Copy = Get-CMApplication -Name "$ApplicationName"
Move-CMObject -FolderPath .\Application\T4M -InputObject $copy
";}i:2;i:3;i:3;s:4241:" powershell>if (((get-host).Version).Major -eq 2) {
    $PSScriptRoot = Split-Path -Parent -Path  $MyInvocation.MyCommand.Definition
}
$XMLFile  = "$PSScriptRoot\Application.xml"
if (-not (Test-Path $XMLFile)){
 throw "Application.xml not exists"
}
##Set variables####################################################
write-host "Modify the xml ;) !!"
notepad "$XMLFile"
write-host "save the XML"
timeout 5
Wait-Process -Name "notepad"
$Data = [Xml] (Get-Content "$XMLFile")
# Read XML and set Variables 
($Data).ApplicationProperty|ForEach-Object {
         $Vendor = $_.Vendor
         $Product = $_.Product 
         $Version = $_.Version
         $Revision = $_.Revision
         $EXECUTEFile = $_.InstallFile
         $EXECuteFileArgument = $_.InstallArguments
         $UnInstallA = $_.UnInstallSetup
         $UnInstallArgument = $_.UnInstallArguements
         $ARPPATH = $_.ARPPath
         $ARCH = $_.ARCH
         $LANG = $_.LANG
   }
$SourceFolder = Read-Host 'What is the Source Folder?'
$SourceFolderSCCMROOT = "\\teg.teda\admin\SCCM\SD\Applications"
$FolderName = "$Vendor" + "_" + "$Product" + "_" + "$Version" + "_" + "$ARCH" + "_" + "$LANG_$Revision"
$ApplicationName = "$Product $Version $Lang $Revision"
$FolderName
New-Item "$SourceFolderSCCMROOT\$FolderName" -type directory
New-Item "$SourceFolderSCCMROOT\$FolderName\approved" -type directory
Copy-Item "$XMLFile" "$SourceFolderSCCMROOT\$FolderName\"  -force
Copy-Item "$PSScriptRoot\Wrapper.ps1" "$SourceFolderSCCMROOT\$FolderName\"  -force  
Copy-Item "$SourceFolder\*" "$SourceFolderSCCMROOT\$FolderName\approved" -Recurse -Force
########################################################################################################################################
Import-Module (Join-Path $(Split-Path $env:SMS_ADMIN_UI_PATH) ConfigurationManager.psd1)
cd "000:"
New-CMApplication -Name "$ApplicationName" -Description "create_from_Script" -Publisher "$Vendor" -SoftwareVersion "$Version"

$scriptDetection = @'
$pagefile = Get-WmiObject -Class Win32_PageFileSetting
$AutomaticManagePageFile = Get-WmiObject -Class Win32_ComputerSystem 
if (($pagefile.InitialSize -eq 1024) -and ($pagefile.MaximumSize -eq 2048) -and ($AutomaticManagePageFile.AutomaticManagedPagefile -eq $false))
{
    Write-host "Installed"
}
else
{
}
'@

$DeploymentTypeHash = @{
                    ManualSpecifyDeploymentType = $true #Yes we are going to manually specify the Deployment type
                    Applicationname = "$ApplicationName" #Application Name 
                   # Applicationname = "DymoLabelmanager 1.73 ENG 00" #Application Name 
                    DeploymentTypeName = "Installation"    #Name given to the Deployment Type
                    DetectDeploymentTypeByCustomScript = $true # Yes deployment type will use a custom script to detect the presence of this 
                    ScriptInstaller = $true # Yes this is a Script Installer
                    ScriptType = 'PowerShell' # yep we will use PowerShell Script
                    ScriptContent = "$scriptDetection"  # Use the earlier defined here string
                    AdministratorComment = "created from Skript"
                   # ContentLocation  = "$SourceFolderSCCMROOT\$FolderName" 
                    ContentLocation = "$SourceFolderSCCMROOT\$FolderName"  # NAL path to the package
                    InstallationProgram ='powershell.exe -ExecutionPolicy Bypass -File "Wrapper.ps1"'  #Command line to Run for install
                    UninstallProgram ='powershell.exe -ExecutionPolicy Bypass -File "Wrapper.ps1" -uninstall' #Command line to Run for un-Install
                    RequiresUserInteraction = $false  #Don't let User interact with this
                    InstallationBehaviorType = 'InstallForSystem' # Targeting Devices here
                    InstallationProgramVisibility = 'Hidden'  # Hide the PowerShell Console
                    LogonRequirementType = 'WhereOrNotUserLoggedOn'
                    }
Add-CMDeploymentType @DeploymentTypeHash 
####################################################################################################
$Copy = Get-CMApplication -Name "$ApplicationName"
Move-CMObject -FolderPath .\Application\T4M -InputObject $copy
";}i:2;i:1949;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6197;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6197;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"SCCM Clientcache verändern über die WMI ";}i:2;i:6199;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6241;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6241;}i:45;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:96:"
$sms=gwmi -namespace root\ccm\softmgmtagent -class cacheconfig;$sms.size = "10000";$sms.put() 
";}i:2;i:3;i:3;s:108:" powershell>
$sms=gwmi -namespace root\ccm\softmgmtagent -class cacheconfig;$sms.size = "10000";$sms.put() 
";}i:2;i:6248;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6363;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6363;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:116:"Das folgende Skript liesst eine CSV aus und verschiebt die Rechner in die entsprechende Collection. 
Bespiel CSV : 
";}i:2;i:6365;}i:49;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:3:"csv";i:2;s:0:"";i:3;s:252:"
ColID;Rechner
UBA0001B; PC62328
UBA0001B; PC62354
UBA0001B; PC62355
UBA0001B; PC62356
UBA0001B; PC62357
UBA0001B; PC62360
UBA0001B; PC62361
UBA0001B; PC62382
UBA0001B; PC62390
UBA0001B; PC62391
UBA0001B; PC62479
UBA0001B; PC62486
UBA0001B; SB71111-1

";}i:2;i:3;i:3;s:257:" csv>
ColID;Rechner
UBA0001B; PC62328
UBA0001B; PC62354
UBA0001B; PC62355
UBA0001B; PC62356
UBA0001B; PC62357
UBA0001B; PC62360
UBA0001B; PC62361
UBA0001B; PC62382
UBA0001B; PC62390
UBA0001B; PC62391
UBA0001B; PC62479
UBA0001B; PC62486
UBA0001B; SB71111-1

";}i:2;i:6486;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"
Skript : 
";}i:2;i:6750;}i:51;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:405:"
if (((get-host).Version).Major -eq 2) {
    $PSScriptRoot = Split-Path -Parent -Path  $MyInvocation.MyCommand.Definition
}
Import-Module (Join-Path $(Split-Path $env:SMS_ADMIN_UI_PATH) ConfigurationManager.psd1)
cd UBA:
Import-Csv "$PSScriptRoot\PilotUpdate_2.csv" -Delimiter ";"|%{Add-CMDeviceCollectionDirectMembershipRule  -CollectionId "ColID" -ResourceId (Get-CMDevice -name $_.Rechner).ResourceId}
";}i:2;i:3;i:3;s:417:" powershell>
if (((get-host).Version).Major -eq 2) {
    $PSScriptRoot = Split-Path -Parent -Path  $MyInvocation.MyCommand.Definition
}
Import-Module (Join-Path $(Split-Path $env:SMS_ADMIN_UI_PATH) ConfigurationManager.psd1)
cd UBA:
Import-Csv "$PSScriptRoot\PilotUpdate_2.csv" -Delimiter ";"|%{Add-CMDeviceCollectionDirectMembershipRule  -CollectionId "ColID" -ResourceId (Get-CMDevice -name $_.Rechner).ResourceId}
";}i:2;i:6766;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:7190;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7190;}i:54;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:7190;}}