a:134:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"GlusterFS";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:840:"GlusterFS ist ein verteiltes Dateisystem, das Speicherelemente von mehreren Servern als einheitliches Dateisystem präsentiert. Die verschiedenen Server, auch Cluster-Nodes (englisch node ‚Knoten‘) genannt, bilden eine Client-Server-Architektur über TCP/IP. Als Besonderheit können NAS-Systeme über Infiniband direkt in den Cluster eingebunden werden, auch eine redundante Anbindung von Speichermedien über TCP/IP, Infiniband Verbs oder InfiniBand SDP (Socket Direct Protocol) ist möglich. Die Daten auf allen Cluster-Nodes können gleichzeitig gelesen und geschrieben werden, wobei alle Änderungen an Dateien auf allen Servern augenblicklich umgesetzt werden. Das Dateisystem wird über ein FUSE-Kernel-Modul eingebunden und wird von POSIX-fähigen Betriebssystemen unterstützt, zum Beispiel Linux, FreeBSD, OpenSolaris und Mac ";}i:2;i:26;}i:5;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:2:"OS";}i:2;i:866;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:276:" X. Um einen GlusterFS-Server zu starten, wird kein Kernel-Modul benötigt. Ein Server kann sowohl Client als auch Server gleichzeitig sein. Ein Client für Windows-Systeme ist in Planung, wird aber von den Entwicklern erst umgesetzt, sobald das WinFUSE-Projekt stabil läuft.";}i:2;i:868;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1144;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1146;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Szenario";i:1;i:2;i:2;i:1146;}i:2;i:1146;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1146;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1146;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:145:"Das folgende Szenario beschreibt die Erstellung eines  GlusterFS auf 2 Fedora-Servern. Alle Server haben eine zweite zusätzliche Festplatte sdb.";}i:2;i:1169;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1315;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1315;}i:15;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"Schritt für Schritt";i:1;i:3;i:2;i:1315;}i:2;i:1315;}i:16;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1315;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1315;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:135:"Als erstes müssen die beiden Festplatten sdb formatiert und gemountet werden. Diese Schritte werden auf beiden Servern ausgeführt.  
";}i:2;i:1348;}i:19;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:146:"
fdisk /dev/sdb
n
w
mkfs.xfs -i size=512 /dev/sdb1 -f
mkdir -p /data/brick1
echo "/dev/sdb1 /data/brick1 xfs defaults 1 2" >> /etc/fstab
mount -a
";}i:2;i:3;i:3;s:152:" bash>
fdisk /dev/sdb
n
w
mkfs.xfs -i size=512 /dev/sdb1 -f
mkdir -p /data/brick1
echo "/dev/sdb1 /data/brick1 xfs defaults 1 2" >> /etc/fstab
mount -a
";}i:2;i:1488;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1647;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1647;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:106:"Nach der Partitionierung wird glusterfs installiert. Dieser Schritt wird auf beiden Servern ausgeführt.  ";}i:2;i:1651;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1757;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1757;}i:25;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:55:"
yum install glusterfs-server
systemctl start glusterd
";}i:2;i:3;i:3;s:61:" bash>
yum install glusterfs-server
systemctl start glusterd
";}i:2;i:1764;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1832;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1832;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:158:"Alle beiden Server bekommen eine static IP-Addresse. Dazu wird die /etc/sysconfig/network-scripts/ifcfg-eth0 und die /etc/sysconfig/network Datei angepasst : ";}i:2;i:1835;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1993;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1993;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"ifcfg-eth0 Datei
";}i:2;i:1995;}i:32;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:65:"
BOOTPROTO=none
GATEWAY=10.0.75.1
IPADDR0=10.0.75.51
PREFIX="24"
";}i:2;i:3;i:3;s:66:">
BOOTPROTO=none
GATEWAY=10.0.75.1
IPADDR0=10.0.75.51
PREFIX="24"
";}i:2;i:2017;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2090;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2090;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"network Datei
";}i:2;i:2092;}i:36;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:19:"
GATEWAY=10.0.75.2
";}i:2;i:3;i:3;s:20:">
GATEWAY=10.0.75.2
";}i:2;i:2111;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2138;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2138;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:168:"In meinem Beispiel habe ich SELINUX und die Firewall (iptables -F) auf beiden Servern deaktiviert. Dazu muss die Datei /etc/selinux/config wie folgt angepasst werden. 
";}i:2;i:2140;}i:40;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:42:"
 SELINUX=disabled or SELINUX=permissive 
";}i:2;i:3;i:3;s:43:">
 SELINUX=disabled or SELINUX=permissive 
";}i:2;i:2313;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2363;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2363;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"Nach einer Anpassung der selinux/config müssen die Server neu gestartet werden.";}i:2;i:2365;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2445;}i:45;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2445;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:"Als nächstes wird über glusterfs eine Verbindung zu den beiden Servern aufgebaut. ";}i:2;i:2447;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2531;}i:48;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2531;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"Server01 
";}i:2;i:2533;}i:50;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:50:"
gluster peer probe Server02
gluster peer Status 
";}i:2;i:3;i:3;s:56:" bash>
gluster peer probe Server02
gluster peer Status 
";}i:2;i:2548;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2611;}i:52;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2611;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"Server02 
";}i:2;i:2613;}i:54;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:50:"
gluster peer probe Server01
gluster peer Status 
";}i:2;i:3;i:3;s:56:" bash>
gluster peer probe Server01
gluster peer Status 
";}i:2;i:2628;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2691;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2691;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:"Wenn SELinux und die Firewall korrekt konfiguriert sind zeigt der Status folgendes an ";}i:2;i:2693;}i:58;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2779;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"peer in Cluster (connected)";}i:2;i:2780;}i:60;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2807;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2808;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2808;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:68:"Falls der Service nicht dauerhaft läuft kann er aktiviert werden. 
";}i:2;i:2810;}i:64;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:30:"
systemctl enable glusterfsd 
";}i:2;i:3;i:3;s:36:" bash>
systemctl enable glusterfsd 
";}i:2;i:2883;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2926;}i:66;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2926;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"Einrichtung des Clusters: ";}i:2;i:2928;}i:68;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2954;}i:69;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2954;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"Das Mountverzeichnis wird auf beiden Servern angelegt. ";}i:2;i:2956;}i:71;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3011;}i:72;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3011;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:143:"</code>
mkdir /data/brick1/gv0
</code>
Als nächstes wird das GlusterFS-Volumen formatiert. Die Ausführung erfolgt nur auf einen der Server. :";}i:2;i:3013;}i:74;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3156;}i:75;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3156;}i:76;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:102:"
gluster  volume create gv0 replica 2 transport tcp Server1:/data/brick1/gv0 Server2:/data/brick1/gv0
";}i:2;i:3;i:3;s:108:" bash>
gluster  volume create gv0 replica 2 transport tcp Server1:/data/brick1/gv0 Server2:/data/brick1/gv0
";}i:2;i:3163;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3278;}i:78;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3278;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"Das Volume wird nun gestartet. ";}i:2;i:3282;}i:80;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3313;}i:81;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3313;}i:82;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:26:"
gluster volume start gv0
";}i:2;i:3;i:3;s:32:" bash>
gluster volume start gv0
";}i:2;i:3320;}i:83;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3359;}i:84;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3359;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"Der Status kann mit dem Kommando geprüft werden.";}i:2;i:3361;}i:86;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3410;}i:87;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3410;}i:88;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:21:"
gluster volume info
";}i:2;i:3;i:3;s:27:" bash>
gluster volume info
";}i:2;i:3417;}i:89;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3451;}i:90;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3451;}i:91;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:96:"Mit dem GlusterFS Client kann nun auf das Volumen von einen beliebigen Client zugriffen werden. ";}i:2;i:3453;}i:92;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3549;}i:93;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3549;}i:94;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:31:"
yum install glusterfs-client 
";}i:2;i:3;i:3;s:37:" bash>
yum install glusterfs-client 
";}i:2;i:3556;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3600;}i:96;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3600;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"Glusterfs-Volumen auf einem Client mounten 
";}i:2;i:3602;}i:98;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:45:"
mount.glusterfs server1:/gv0 /mnt/glusterfs
";}i:2;i:3;i:3;s:51:" bash>
mount.glusterfs server1:/gv0 /mnt/glusterfs
";}i:2;i:3651;}i:99;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3709;}i:100;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3709;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"Der Eintrag in die /etc/fstab sieht dann wie folgt aus : ";}i:2;i:3711;}i:102;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3768;}i:103;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3768;}i:104;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:61:"
server01:/gv0 /mnt/glusterfs glusterfs defaults,_netdev 0 0
";}i:2;i:3;i:3;s:67:" bash>
server01:/gv0 /mnt/glusterfs glusterfs defaults,_netdev 0 0
";}i:2;i:3775;}i:105;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3849;}i:106;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3849;}i:107;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3851;}i:108;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"Samba-anpassung";}i:2;i:3853;}i:109;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3868;}i:110;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3870;}i:111;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3870;}i:112;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Samba wird wie folgt Installiert 
";}i:2;i:3872;}i:113;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:58:"
yum install samba-vfs-glusterfs
yum install samba-client
";}i:2;i:3;i:3;s:64:" bash>
yum install samba-vfs-glusterfs
yum install samba-client
";}i:2;i:3911;}i:114;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3982;}i:115;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3982;}i:116;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"---";}i:2;i:3985;}i:117;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:3988;}i:118;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"läuft noch nicht ";}i:2;i:3990;}i:119;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4008;}i:120;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4008;}i:121;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:4011;}i:122;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"Fehleranalyse";}i:2;i:4013;}i:123;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:4026;}i:124;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:": ";}i:2;i:4028;}i:125;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4030;}i:126;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4030;}i:127;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:156:"Sollte bei der Erstellung des Volumen der Fehler erscheinen das, dass Volumen bereits existiert kann folgendes ausgeführt werden um das Problem zu lösen. ";}i:2;i:4032;}i:128;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4188;}i:129;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4188;}i:130;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:152:"
yum install attr
cd /data/brick1/gv0
for i in `attr -lq .`; do   setfattr -x trusted.$i .; done
attr -lq /data/brick1/gv0 # Bei leer läuft es wieder 
";}i:2;i:3;i:3;s:158:" bash>
yum install attr
cd /data/brick1/gv0
for i in `attr -lq .`; do   setfattr -x trusted.$i .; done
attr -lq /data/brick1/gv0 # Bei leer läuft es wieder 
";}i:2;i:4195;}i:131;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4360;}i:132;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4364;}i:133;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4364;}}