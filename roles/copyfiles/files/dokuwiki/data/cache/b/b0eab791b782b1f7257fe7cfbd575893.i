a:17:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:115:"Schritt für Schritt Anleitung um ein AD über die PowerShell zu installieren. Dieses Howto ist kurz und knackig ! ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:116;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:116;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"Feature installieren 
";}i:2;i:118;}i:6;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:43:"
Install-windowsfeature AD-domain-services
";}i:2;i:3;i:3;s:55:" powershell>
Install-windowsfeature AD-domain-services
";}i:2;i:145;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:207;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:207;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"Module installieren 
";}i:2;i:211;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:30:"
Import-Module ADDSDeployment
";}i:2;i:3;i:3;s:42:" powershell>
Import-Module ADDSDeployment
";}i:2;i:237;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:286;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:286;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"AddDSForest installieren  
";}i:2;i:290;}i:14;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:135:"
Install-ADDSDomain  -NewDomainName  'schlumpfenland'  `
-ParentDomainName 'schlumpfenland.com'; `
-InstallDNS `
-CreateDNSDelegation 
";}i:2;i:3;i:3;s:147:" powershell>
Install-ADDSDomain  -NewDomainName  'schlumpfenland'  `
-ParentDomainName 'schlumpfenland.com'; `
-InstallDNS `
-CreateDNSDelegation 
";}i:2;i:322;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:476;}i:16;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:476;}}