a:17:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"#Repository anlegen 
";}i:2;i:1;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:99:"
Register-PSRepository -Name T4M -SourceLocation "\\T4M-APC-255\repo$" -InstallationPolicy Trusted
";}i:2;i:3;i:3;s:105:" bash>
Register-PSRepository -Name T4M -SourceLocation "\\T4M-APC-255\repo$" -InstallationPolicy Trusted
";}i:2;i:27;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"
#prüfen ob es vorhanden ist
";}i:2;i:139;}i:5;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:18:"
Get-PSRepository
";}i:2;i:3;i:3;s:24:" bash>
Get-PSRepository
";}i:2;i:174;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:205;}i:7;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:189:"
New-ModuleManifest -Path "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\MSSQLQuery\MSSQLQuery.psd1" -Author 'Daniel Schlaupitz' -ModuleVersion '1.0' -Description 'SQL Query function'
";}i:2;i:3;i:3;s:195:" bash>
New-ModuleManifest -Path "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\MSSQLQuery\MSSQLQuery.psd1" -Author 'Daniel Schlaupitz' -ModuleVersion '1.0' -Description 'SQL Query function'
";}i:2;i:211;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"
#Module veröffentlichen 
";}i:2;i:413;}i:9;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:73:"
Publish-Module -Name MSSQLQuery -Repository "T4M" -ReleaseNotes "First"
";}i:2;i:3;i:3;s:79:" bash>
Publish-Module -Name MSSQLQuery -Repository "T4M" -ReleaseNotes "First"
";}i:2;i:445;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"
#finde Module 
";}i:2;i:531;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:29:"
Find-Module -Repository T4M
";}i:2;i:3;i:3;s:35:" bash>
Find-Module -Repository T4M
";}i:2;i:552;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:594;}i:13;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:33:"
Install-Module -Name MSSQLQUERy
";}i:2;i:3;i:3;s:39:" bash>
Install-Module -Name MSSQLQUERy
";}i:2;i:600;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:646;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:646;}i:16;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:646;}}