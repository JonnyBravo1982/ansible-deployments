a:47:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:10:"table_open";i:1;a:3:{i:0;i:3;i:1;i:4;i:2;i:1;}i:2;i:0;}i:2;a:3:{i:0;s:15:"tablethead_open";i:1;a:0:{}i:2;i:0;}i:3;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:0;}i:4;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:2;i:1;N;i:2;i:1;}i:2;i:0;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Commando";}i:2;i:2;}i:6;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:10;}i:7;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:11;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"beschreibung";}i:2;i:12;}i:9;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:24;}i:10;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:25;}i:11;a:3:{i:0;s:16:"tablethead_close";i:1;a:0:{}i:2;i:25;}i:12;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:25;}i:13;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:25;}i:14;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:28:"Get-Command|Sort-Object noun";}i:2;i:3;i:3;s:40:" powershell>Get-Command|Sort-Object noun";}i:2;i:32;}i:15;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:79;}i:16;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:79;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:" Sortiert get-command";}i:2;i:80;}i:18;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:101;}i:19;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:102;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:102;}i:21;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:102;}i:22;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:102;}i:23;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:102;}i:24;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:102;}i:25;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:21:"Get-Command *-Service";}i:2;i:3;i:3;s:33:" powershell>Get-Command *-Service";}i:2;i:109;}i:26;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:149;}i:27;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:149;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"zeigt alle Kommandos die Service im Namen haben";}i:2;i:150;}i:29;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:197;}i:30;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:198;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:198;}i:32;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:198;}i:33;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:198;}i:34;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:198;}i:35;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:198;}i:36;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:164:" $varping = Get-Content .\computers.txt 
 $varping|Where-Object {if (Test-Connection $_ -Quiet)
 {write-host "$_ is running"}ELSE {write-host "$_ is not running"} }";}i:2;i:3;i:3;s:176:" powershell> $varping = Get-Content .\computers.txt 
 $varping|Where-Object {if (Test-Connection $_ -Quiet)
 {write-host "$_ is running"}ELSE {write-host "$_ is not running"} }";}i:2;i:205;}i:37;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:388;}i:38;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:388;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"Das folgende Beispiel pingt Rechner an ";}i:2;i:389;}i:40;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:428;}i:41;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:429;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:429;}i:43;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:429;}i:44;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:429;}i:45;a:3:{i:0;s:11:"table_close";i:1;a:1:{i:0;i:429;}i:2;i:429;}i:46;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:429;}}