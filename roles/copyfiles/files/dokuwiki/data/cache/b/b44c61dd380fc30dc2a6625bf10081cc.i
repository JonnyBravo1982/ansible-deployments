a:38:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"Get-DscResource zeigt die Resourcen an die DSC nutzen kann. ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:61;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:61;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Install Beispiel von der ";}i:2;i:63;}i:6;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:33:"https://www.powershellgallery.com";i:1;N;}i:2;i:88;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:121;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:121;}i:9;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:33:"
Install-Module -Name xRobocopy 
";}i:2;i:3;i:3;s:45:" powershell>
Install-Module -Name xRobocopy 
";}i:2;i:129;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:181;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:181;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"das folgende Beispiel erstellt eine DSC-Konfiguration. ";}i:2;i:183;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:238;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:238;}i:15;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:921:"
Configuration InstallApplication {
Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
node 'localhost' {
            file MyConfig {
                DestinationPath = 'C:\Test\test.txt'
                Type = 'File'
                contents = 'write-host works fine'
            }

            Package Install7Zip {
                
                Ensure = 'Present'
                Name = '7-Zip 16.02'
                Path = 'C:\temp\7z1602.msi'
                ProductId = '{23170F69-40C1-2701-1602-000001000000}'
                LogPath = 'C:\Install_7zip.log'
                                }
           Package Python27 {
                Ensure = 'Present'
                Name = 'Python 2.7.11'
                Path = 'C:\temp\python-2.7.11.msi'
                ProductId = '{16E52445-1392-469F-9ADB-FC03AF00CD61}'
                LogPath = 'C:\Python2711.log'
                               }
   }
}
";}i:2;i:3;i:3;s:933:" powershell>
Configuration InstallApplication {
Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
node 'localhost' {
            file MyConfig {
                DestinationPath = 'C:\Test\test.txt'
                Type = 'File'
                contents = 'write-host works fine'
            }

            Package Install7Zip {
                
                Ensure = 'Present'
                Name = '7-Zip 16.02'
                Path = 'C:\temp\7z1602.msi'
                ProductId = '{23170F69-40C1-2701-1602-000001000000}'
                LogPath = 'C:\Install_7zip.log'
                                }
           Package Python27 {
                Ensure = 'Present'
                Name = 'Python 2.7.11'
                Path = 'C:\temp\python-2.7.11.msi'
                ProductId = '{16E52445-1392-469F-9ADB-FC03AF00CD61}'
                LogPath = 'C:\Python2711.log'
                               }
   }
}
";}i:2;i:245;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1185;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1185;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Der Befehl 
";}i:2;i:1187;}i:19;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:41:"
InstallApplication -OutputPath C:\temp\
";}i:2;i:3;i:3;s:53:" powershell>
InstallApplication -OutputPath C:\temp\
";}i:2;i:1204;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"
erstellt eine MOF File anhand der Konfiguration. ";}i:2;i:1264;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1314;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1314;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"Die MOF-File kann nun auf dem Zielsystem angewendet werden. 
";}i:2;i:1316;}i:24;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:70:"
start-dscconfiguration -Path <Pfad_der_Mofauchnetwork> -wait -verbos
";}i:2;i:3;i:3;s:82:" powershell>
start-dscconfiguration -Path <Pfad_der_Mofauchnetwork> -wait -verbos
";}i:2;i:1382;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1471;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1471;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"Das ganze kann auch Remote gestartet werden 
";}i:2;i:1474;}i:28;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:1:"
";}i:2;i:3;i:3;s:14:" powershell >
";}i:2;i:1524;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1545;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1545;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:123:"Netzlaufwerk waren bei meinem Test 21.07.2016 nicht funktional ich musste mir vorher ein Laufwerk auf den Client mounten. 
";}i:2;i:1547;}i:32;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:81:"
 New-PSDrive -Name Mountdir -PSProvider FileSystem -Root \\t4m-apc-255\Packages
";}i:2;i:3;i:3;s:93:" powershell>
 New-PSDrive -Name Mountdir -PSProvider FileSystem -Root \\t4m-apc-255\Packages
";}i:2;i:1675;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1775;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1775;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"Diese konnte ich dann in der Konfigurationsfile wiefolgt ansprechen. ";}i:2;i:1777;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1846;}i:37;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1846;}}