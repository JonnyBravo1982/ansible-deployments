a:30:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:"In diesem Beispiel wird die die Klasse Benutzer angelegt und mit zwei Datensätzen befüllt. ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:94;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:94;}i:5;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:10:"powershell";i:2;s:0:"";i:3;s:368:"
class Benutzer {
[int32] $ID
[STRING]$Vornamer
[STRING]$Nachname
    #Aufruf Methode 
    Benutzer([string]$ID,$Vorname,$Nachname){
    $this.ID = $ID
    $this.Vornamer = $Vorname
    $this.Nachname = $Nachname
    } 
}
$NewBenutzer1 = [Benutzer]::new('1','Daniel','Schlaupitz')
$NewBenutzer2 = [Benutzer]::new('2','Horst','Schlaupitz')
$NewBenutzer1
$NewBenutzer2
 ";}i:2;i:3;i:3;s:380:" powershell>
class Benutzer {
[int32] $ID
[STRING]$Vornamer
[STRING]$Nachname
    #Aufruf Methode 
    Benutzer([string]$ID,$Vorname,$Nachname){
    $this.ID = $ID
    $this.Vornamer = $Vorname
    $this.Nachname = $Nachname
    } 
}
$NewBenutzer1 = [Benutzer]::new('1','Daniel','Schlaupitz')
$NewBenutzer2 = [Benutzer]::new('2','Horst','Schlaupitz')
$NewBenutzer1
$NewBenutzer2
 ";}i:2;i:101;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:488;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:488;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"Ausgabe : ";}i:2;i:490;}i:9;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:7:"konsole";i:1;a:2:{i:0;i:1;i:1;s:11:"konsoleuser";}i:2;i:1;i:3;s:9:"<konsole>";}i:2;i:500;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:509;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:7:"konsole";i:1;a:2:{i:0;i:3;i:1;s:22:"ID Vornamer Nachname  ";}i:2;i:3;i:3;s:22:"ID Vornamer Nachname  ";}i:2;i:510;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:532;}i:13;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:533;}i:14;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:7:"konsole";i:1;a:2:{i:0;i:3;i:1;s:1:" ";}i:2;i:3;i:3;s:1:" ";}i:2;i:535;}i:15;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"---";}i:2;i:536;}i:16;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"---";}i:2;i:539;}i:17;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:542;}i:18;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:7:"konsole";i:1;a:2:{i:0;i:3;i:1;s:1:" ";}i:2;i:3;i:3;s:1:" ";}i:2;i:544;}i:19;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"---";}i:2;i:545;}i:20;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"---";}i:2;i:548;}i:21;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:551;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:553;}i:23;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:7:"konsole";i:1;a:2:{i:0;i:3;i:1;s:22:" 1 Daniel   Schlaupitz";}i:2;i:3;i:3;s:22:" 1 Daniel   Schlaupitz";}i:2;i:556;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:578;}i:25;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:7:"konsole";i:1;a:2:{i:0;i:3;i:1;s:22:" 2 Horst    Schlaupitz";}i:2;i:3;i:3;s:22:" 2 Horst    Schlaupitz";}i:2;i:579;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:601;}i:27;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:7:"konsole";i:1;a:1:{i:0;i:4;}i:2;i:4;i:3;s:10:"</konsole>";}i:2;i:602;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:612;}i:29;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:612;}}