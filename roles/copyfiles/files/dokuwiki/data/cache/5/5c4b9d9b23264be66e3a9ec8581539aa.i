a:17:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:"Das folgende PowerShell Skript erstellt einen Nano-Server und legt diesen im HyperV an. ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:89;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:89;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:"Verzeichnisse = Im ISO Verzeichnis müssen die Sourcen eines Windows Server 2016 liegen ";}i:2;i:91;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:179;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:179;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"Base = wird für die Erstellung genutzt ";}i:2;i:181;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:221;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:221;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"VHD = in diesen Verzeichnis liegen die fertigen VHDs";}i:2;i:223;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:275;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:275;}i:14;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:983:"
 #region PREREQUISITES
    # Variables
    $password = ConvertTo-SecureString -AsPlainText -Force -String 'Pa$$w0rd'
    $iso_X = 'C:\temp\TP5\'
    $VirtualHardDiskPath = $(Get-VMHost).VirtualHardDiskPath
    # Nano creation module (from WS 2016 ISO) 
    # Import-Module 'C:\temp\TP5\NanoServer\NanoServer\NanoServerImageGenerator\NanoServerImageGenerator.psm1'

$nanoName = 'sea-nano1'
New-NanoServerImage `
   -DeploymentType Guest `
   -Edition Standard `
   -MediaPath "$PSScriptRoot\ISO\" `
   -BasePath "$PSScriptRoot\Base" `
   -TargetPath "$PSScriptRoot\VHD\$nanoName.vhd" `
   -ComputerName $nanoname `
   -AdministratorPassword $password `
   -Packages Microsoft-NanoServer-IIS-Package

    $paramsNewVM = @{
        Computername = $env:computername
        Name = $nanoName
        Generation = 1
        MemoryStartupBytes = 1GB # Minimum: 512 GB 
        VHDPath = "$PSScriptRoot\VHD\$nanoName.vhd"
        SwitchName = 'NAT'
    }
    New-VM @paramsNewVM | Start-VM
";}i:2;i:3;i:3;s:995:" powershell>
 #region PREREQUISITES
    # Variables
    $password = ConvertTo-SecureString -AsPlainText -Force -String 'Pa$$w0rd'
    $iso_X = 'C:\temp\TP5\'
    $VirtualHardDiskPath = $(Get-VMHost).VirtualHardDiskPath
    # Nano creation module (from WS 2016 ISO) 
    # Import-Module 'C:\temp\TP5\NanoServer\NanoServer\NanoServerImageGenerator\NanoServerImageGenerator.psm1'

$nanoName = 'sea-nano1'
New-NanoServerImage `
   -DeploymentType Guest `
   -Edition Standard `
   -MediaPath "$PSScriptRoot\ISO\" `
   -BasePath "$PSScriptRoot\Base" `
   -TargetPath "$PSScriptRoot\VHD\$nanoName.vhd" `
   -ComputerName $nanoname `
   -AdministratorPassword $password `
   -Packages Microsoft-NanoServer-IIS-Package

    $paramsNewVM = @{
        Computername = $env:computername
        Name = $nanoName
        Generation = 1
        MemoryStartupBytes = 1GB # Minimum: 512 GB 
        VHDPath = "$PSScriptRoot\VHD\$nanoName.vhd"
        SwitchName = 'NAT'
    }
    New-VM @paramsNewVM | Start-VM
";}i:2;i:282;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1284;}i:16;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1284;}}