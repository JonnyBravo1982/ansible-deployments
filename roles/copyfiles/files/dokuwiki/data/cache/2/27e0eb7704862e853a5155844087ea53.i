a:13:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:170:"Um eine Hyper-V Remoteverbindung unter Windows 10 aufzubauen muss winrm auf Server und Client aktiviert sein. Des Weiteren muss eine CredSSP Verbindung aufgebaut werden. ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:171;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:171;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Server 
";}i:2;i:173;}i:6;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:56:"
SET-WSManQuickConfig 
Enable-WSManCredSSP -Role Server
";}i:2;i:3;i:3;s:68:" powershell>
SET-WSManQuickConfig 
Enable-WSManCredSSP -Role Server
";}i:2;i:186;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:261;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:261;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Client 
";}i:2;i:263;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:89:"
SET-WSManQuickConfig 
Enable-WSManCredSSP -Role Client -DelegateComputer "<ServerName>"
";}i:2;i:3;i:3;s:101:" powershell>
SET-WSManQuickConfig 
Enable-WSManCredSSP -Role Client -DelegateComputer "<ServerName>"
";}i:2;i:276;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:384;}i:12;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:384;}}