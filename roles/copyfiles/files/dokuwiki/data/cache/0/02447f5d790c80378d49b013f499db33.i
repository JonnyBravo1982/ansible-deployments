a:62:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"Windows 10 Tipps und Tricks";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:45;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:36:"Windows 10 Image bearbeiten mit DISM";i:1;i:2;i:2;i:45;}i:2;i:45;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:45;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:45;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:"Um ein Windows 10 zu bearbeiten muss das ADK für Windows 10 installiert werden. Link ";}i:2;i:96;}i:8;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:72:"https://msdn.microsoft.com/en-us/windows/hardware/dn913721.aspx#adkwin10";i:1;N;}i:2;i:182;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:254;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:254;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:245:"Das dism für Windows 10 liegt nach der Installation im Verzeichnis C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\DeploymentTools\x86\DISM. Das folgende Beispiel Mountet ein WIM File und installiert das Sprachpaket it-it. ";}i:2;i:256;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:501;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:501;}i:14;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:5:"batch";i:2;s:0:"";i:3;s:432:" 
dism.exe /mount-Image /ImageFile:C:\temp\Wacom\Imaging\win10-1511_x64_enterprise_eng.wim /index:1 /MountDir:"C:\temp\Wacom\Imaging\Mount"
Dism /Image:C:\temp\Wacom\Imaging\Mount /ScratchDir:C:\Scratch /Add-Package /PackagePath:C:\temp\Wacom\Imaging\LangPack\it-it\lp.cab
dism /unmount-Wim /MountDir:C:\temp\Wacom\Imaging\Mount /commit
Dism /Image:C:\temp\Wacom\Imaging\Mount /Get-ProvisionedAppxPackages >> C:\temp\Wacom\Porv.txt
";}i:2;i:3;i:3;s:439:" batch> 
dism.exe /mount-Image /ImageFile:C:\temp\Wacom\Imaging\win10-1511_x64_enterprise_eng.wim /index:1 /MountDir:"C:\temp\Wacom\Imaging\Mount"
Dism /Image:C:\temp\Wacom\Imaging\Mount /ScratchDir:C:\Scratch /Add-Package /PackagePath:C:\temp\Wacom\Imaging\LangPack\it-it\lp.cab
dism /unmount-Wim /MountDir:C:\temp\Wacom\Imaging\Mount /commit
Dism /Image:C:\temp\Wacom\Imaging\Mount /Get-ProvisionedAppxPackages >> C:\temp\Wacom\Porv.txt
";}i:2;i:508;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:954;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:956;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:35:"Applikationen (APPx) deinstallieren";i:1;i:3;i:2;i:956;}i:2;i:956;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:956;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:956;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:145:"Alle Anwendungen die in der Metrooberfläche dargestellt werden sind .appx Anwendungen diese liegen im Verzeichnis C:\Program Files\WindowsApps. ";}i:2;i:1003;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1148;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1148;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"Das folgende PowerShell Skript deinstalliert mehre Appx Programme. ";}i:2;i:1150;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1217;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1217;}i:26;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"PowerShell";i:2;s:0:"";i:3;s:3264:"
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*Solitaire*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *solitaire* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*xbox*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*3DBuilder*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *3dbuilder* | Remove-AppxPackage
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*News*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *News* | Remove-AppxPackage
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*OneNote*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *OneNote* | Remove-AppxPackage
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*Sway*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *Sway* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*Skype*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *Skype* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*Zune*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *Zunee* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*People*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *People* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*Messaging*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *Messaging* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*OfficeHub*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *Office* | Remove-AppxPackag
Get-AppxPackage *Feedback* | Remove-AppxPackag
Get-AppxPackage *Cortana* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*bingfinance*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *bingfinance* | Remove-AppxPackage
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "**bingnews*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *bingnews* | Remove-AppxPackage
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*bingsports*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *bingsports* | Remove-AppxPackage
";}i:2;i:3;i:3;s:3276:" PowerShell>
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*Solitaire*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *solitaire* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*xbox*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*3DBuilder*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *3dbuilder* | Remove-AppxPackage
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*News*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *News* | Remove-AppxPackage
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*OneNote*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *OneNote* | Remove-AppxPackage
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*Sway*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *Sway* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*Skype*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *Skype* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*Zune*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *Zunee* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*People*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *People* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*Messaging*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *Messaging* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*OfficeHub*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *Office* | Remove-AppxPackag
Get-AppxPackage *Feedback* | Remove-AppxPackag
Get-AppxPackage *Cortana* | Remove-AppxPackag
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*bingfinance*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *bingfinance* | Remove-AppxPackage
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "**bingnews*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *bingnews* | Remove-AppxPackage
Get-AppxProvisionedPackage -Online | Select-Object Packagename | Where-Object {$_.PackageName -like "*bingsports*"} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
Get-AppxPackage *bingsports* | Remove-AppxPackage
";}i:2;i:1224;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4507;}i:28;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4512;}i:29;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Startmenü anpassen";i:1;i:4;i:2;i:4512;}i:2;i:4512;}i:30;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:4512;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4512;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:194:"Das Windows Startmenü kann mit den PowerShell-Befehlen Export-StartLayout und Import-StartLayout Import/Exportiert werden. Das Beispiel beschreibt eine Modifizierung der default Einstellungen. ";}i:2;i:4540;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4735;}i:34;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:4735;}i:35;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:4735;}i:36;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:4735;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:" Startmenü manuell anpassen. ";}i:2;i:4739;}i:38;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:4769;}i:39;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:4769;}i:40;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:4769;}i:41;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:4769;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:" Startmenü exportieren ";}i:2;i:4773;}i:43;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:4797;}i:44;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:4797;}i:45;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:4797;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4797;}i:47;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"PowerShell";i:2;s:0:"";i:3;s:48:"Export-StartLayout -Path "C:\temp\myLayout.bin" ";}i:2;i:3;i:3;s:60:" PowerShell>Export-StartLayout -Path "C:\temp\myLayout.bin" ";}i:2;i:4803;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4870;}i:49;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:4870;}i:50;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:4870;}i:51;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:4870;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:" 3. Importieren ";}i:2;i:4874;}i:53;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:4890;}i:54;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:4890;}i:55;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:4890;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4890;}i:57;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"PowerShell";i:2;s:0:"";i:3;s:48:"Import-StartLayout -Path "C:\temp\myLayout.bin" ";}i:2;i:3;i:3;s:60:" PowerShell>Import-StartLayout -Path "C:\temp\myLayout.bin" ";}i:2;i:4896;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"
Der Import überschreibt automatisch die Default einstellung ";}i:2;i:4963;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5026;}i:60;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5031;}i:61;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:5031;}}