a:9:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"Beispiel für eine Session und einem ScriptBlock !";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:51;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:51;}i:5;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:212:"
$CON = New-PSSession -ComputerName 'T4M-APC-252' -Credential 'Trans4mation\adm-dschlaupitz'
Invoke-Command -Session $CON -ScriptBlock {
Get-CimInstance -Namespace root/StandardCimv2 -ClassName MSFT_NetAdapter
}
";}i:2;i:3;i:3;s:224:" powershell>
$CON = New-PSSession -ComputerName 'T4M-APC-252' -Credential 'Trans4mation\adm-dschlaupitz'
Invoke-Command -Session $CON -ScriptBlock {
Get-CimInstance -Namespace root/StandardCimv2 -ClassName MSFT_NetAdapter
}
";}i:2;i:58;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:289;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:289;}i:8;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:289;}}