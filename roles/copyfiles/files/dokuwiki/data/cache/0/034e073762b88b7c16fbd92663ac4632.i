a:37:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:90:"Hier eine kleine Auflistung aller geprüften PowerShell Kommandos im Bezug auf SCCM 2012. ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:91;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:91;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"1. Dieses Beispiel listet alle Applikationsnamen auf  
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
";}i:2;i:1059;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1660;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1660;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:"Um Module sauber in PowerShell zu Importieren (nur wenn die Konsole installiert ist) env";}i:2;i:1662;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1750;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1750;}i:33;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:90:"
Import-Module (Join-Path $(Split-Path $env:SMS_ADMIN_UI_PATH) ConfigurationManager.psd1)
";}i:2;i:3;i:3;s:102:" powershell>
Import-Module (Join-Path $(Split-Path $env:SMS_ADMIN_UI_PATH) ConfigurationManager.psd1)
";}i:2;i:1757;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1866;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1866;}i:36;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1866;}}