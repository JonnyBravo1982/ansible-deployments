a:15:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:"Abfrage eines Kennworts beim Starten einer OSD-Tasksequence mit SCCM 2007 R3";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:77;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:77;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:309:"Beim starten der OSD-Tasksequence wird ein Kennwort abgefragt um zu Verhindern das unbefugte das System neu betanken können. Das Script besteht aus der promptforpassword.wsf und der shutdown.wsf, wie der Name schon sagt frage die erste wsf das Passwort ab und die zweite wsf fährt den Rechner ggf. herunter.";}i:2;i:79;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:388;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:388;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"promptforpassword.wsf";}i:2;i:390;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:412;}i:10;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:974:"<job id="PromptForPassword">
<script language="VBScript" >
Dim env,oTSProgressUI,MyPass
Set env = CreateObject("Microsoft.SMS.TSEnvironment")set oTSProgressUI = CreateObject("Microsoft.SMS.TSProgressUI")
oTSProgressUI.CloseProgressDialog()env("ALLOWTSRUN") = "NO"MyPass=Inputbox("Bitte geben Sie das Passwort ein")If MyPass = "test" then
  env("ALLOWTSRUN") = "YES"
End If
</script>
</job>
  shutdown.wsf  <job id="setEnv">
  <script language="VBScript" src="ZTIUtility.vbs"/>
  <script language="VBScript">
 Dim oTSProgressUI
set oTSProgressUI = CreateObject("Microsoft.SMS.TSProgressUI")
oTSProgressUI.CloseProgressDialog()        On error resume next
     Dim fso, WShell, oFile
     Set WShell = CreateObject("WScript.Shell")
     Set fso = CreateObject("scripting.filesystemobject")
     scriptroot = oEnvironment.Item("SCRIPTROOT")
     MsgBox "Der Computer wird neugestartet",0, "Task Sequence abgebrochen"
     WShell.Run "wpeutil shutdown",0, True 
</script>
</job>";}i:2;i:412;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:412;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:624:"In der promptforpassword.wsf wird die Tasksequencevariable ALLOWTSRUN auf NO gesetzt und eine InputBox wird aufgerufen in der das Kennwort abgefragt wird. Danach wird die Eingabe aus der InputBox in die Variable MyPass geschrieben und abgeglichen. Wenn der Wert aus der Variable mit dem festgelegten Wert übereinstimmt wird die Tasksequence Variable auf YES gesetzt. Als nächstes muss die shutdown.wsg abgerufen werden, diese wird mit einer Condition versehen die Abfragt ob die Tasksequence Variable ALLOWTSRUN auf YES gesetzt ist, wenn ja wird die Tasksequence fortgesetzt. Wenn nicht wird der Rechner heruntergefahren. ";}i:2;i:1435;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1435;}i:14;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1435;}}