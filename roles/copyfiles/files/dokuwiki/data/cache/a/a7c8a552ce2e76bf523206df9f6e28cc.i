a:443:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:7:"rsyslog";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"Beispiel: Logdaten von einem Rechner auf den nächsten übertragen";}i:2;i:23;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:90;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:90;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Zielrechner:";i:1;i:2;i:2;i:90;}i:2;i:90;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:90;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:90;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:"Zielrechner netzwerkfähig machen:
Passende Nachrichten in Datei ";}i:2;i:115;}i:11;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:180;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"/var/log/beispiel";}i:2;i:182;}i:13;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:199;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:" schreiben:";}i:2;i:201;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:212;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:214;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"Debian, CentOS";i:1;i:4;i:2;i:214;}i:2;i:214;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:214;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:214;}i:20;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:237;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"/etc/rsyslog.conf";}i:2;i:239;}i:22;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:256;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:": ( debian 5.0, centos 6.0 )
";}i:2;i:258;}i:24;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:75:"
  $ModLoad imudp
  $UDPServerRun 514
  local5.info     -/var/log/beispiel
";}i:2;i:3;i:3;s:76:">
  $ModLoad imudp
  $UDPServerRun 514
  local5.info     -/var/log/beispiel
";}i:2;i:292;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:375;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:375;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"Syntax der Konfigurationsdatei überprüfen:";}i:2;i:377;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:421;}i:29;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:12:"rsyslogd -N1";}i:2;i:421;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:421;}i:31;a:3:{i:0;s:4:"nest";i:1;a:1:{i:0;a:4:{i:0;a:3:{i:0;s:13:"footnote_open";i:1;a:0:{}i:2;i:437;}i:1;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:50:"http://www.rsyslog.com/how-can-i-check-the-config/";i:1;N;}i:2;i:439;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:489;}i:3;a:3:{i:0;s:14:"footnote_close";i:1;a:0:{}i:2;i:490;}}}i:2;i:437;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:492;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:492;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"Syslog neu starten:";}i:2;i:494;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:513;}i:36;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:23:"service rsyslog restart";}i:2;i:513;}i:37;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:541;}i:38;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:4:"SuSE";i:1;i:4;i:2;i:541;}i:2;i:541;}i:39;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:541;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:541;}i:41;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:554;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"/etc/rsyslog.d/remote.conf";}i:2;i:556;}i:43;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:582;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:": ( sles 11 SP 1 )
";}i:2;i:584;}i:45;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:38:"
  $ModLoad imudp
  $UDPServerRun 514
";}i:2;i:3;i:3;s:39:">
  $ModLoad imudp
  $UDPServerRun 514
";}i:2;i:608;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:654;}i:47;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:655;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"/etc/rsyslog.conf";}i:2;i:657;}i:49;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:674;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:": ( debian 5.0 )";}i:2;i:676;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:692;}i:52;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:692;}i:53;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:38:"
  local5.info     -/var/log/beispiel
";}i:2;i:3;i:3;s:39:">
  local5.info     -/var/log/beispiel
";}i:2;i:699;}i:54;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:745;}i:55;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:745;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"Syslog neu starten:";}i:2;i:747;}i:57;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:766;}i:58;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:26:"/etc/init.d/syslog restart";}i:2;i:766;}i:59;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:797;}i:60;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"Absender-Rechner:";i:1;i:2;i:2;i:797;}i:2;i:797;}i:61;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:797;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:797;}i:63;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:827;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"/etc/rsyslog.d/local5.conf";}i:2;i:829;}i:65;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:855;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" :
";}i:2;i:857;}i:67;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:32:"
  local5.info     @zielrechner
";}i:2;i:3;i:3;s:33:">
  local5.info     @zielrechner
";}i:2;i:865;}i:68;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:905;}i:69;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:905;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"Syslog neu einlesen:";}i:2;i:907;}i:71;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:927;}i:72;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:27:"/etc/init.d/rsyslog restart";}i:2;i:927;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:927;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Testen: Meldung abschicken:";}i:2;i:959;}i:75;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:986;}i:76;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:35:"logger -p local5.info "Testmeldung"";}i:2;i:986;}i:77;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1026;}i:78;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"property based filter";i:1;i:2;i:2;i:1026;}i:2;i:1026;}i:79;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1026;}i:80;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1026;}i:81;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"Auf dem Zielrechner:
";}i:2;i:1060;}i:82;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:172:"

:syslogtag, isequal, "ingo:"          /var/log/ingo.log
& ~ # in der vorherigen Zeile ausgegebene Meldungen nicht erneut ausgeben
:source , !isequal , "notebook02"     ~
";}i:2;i:3;i:3;s:210:" /etc/rsyslog.d/45-remote-filter.conf>

:syslogtag, isequal, "ingo:"          /var/log/ingo.log
& ~ # in der vorherigen Zeile ausgegebene Meldungen nicht erneut ausgeben
:source , !isequal , "notebook02"     ~
";}i:2;i:1086;}i:83;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1303;}i:84;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1307;}i:85;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"syslog";i:1;i:1;i:2;i:1307;}i:2;i:1307;}i:86;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1307;}i:87;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1307;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"Beispiel: Logdaten von einem Rechner auf den nächsten übertragen";}i:2;i:1328;}i:89;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1394;}i:90;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1396;}i:91;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Zielrechner:";i:1;i:2;i:2;i:1396;}i:2;i:1396;}i:92;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1396;}i:93;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1396;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Zielrechner netzwerkfähig machen:";}i:2;i:1421;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1455;}i:96;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1455;}i:97;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1457;}i:98;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"/etc/sysconfig/syslog";}i:2;i:1459;}i:99;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1480;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:" : ( Centos 5 )
";}i:2;i:1482;}i:101;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:27:"
SYSLOGD_OPTIONS="-m 0 -r"
";}i:2;i:3;i:3;s:28:">
SYSLOGD_OPTIONS="-m 0 -r"
";}i:2;i:1503;}i:102;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1538;}i:103;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1538;}i:104;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1540;}i:105;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"/etc/sysconfig/syslog";}i:2;i:1542;}i:106;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1563;}i:107;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:": ( openSuSE 11.1 )
";}i:2;i:1565;}i:108;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:23:"
  SYSLOGD_PARAMS="-r"
";}i:2;i:3;i:3;s:29:" bash>
  SYSLOGD_PARAMS="-r"
";}i:2;i:1590;}i:109;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1626;}i:110;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1626;}i:111;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1628;}i:112;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"/etc/default/syslogd";}i:2;i:1630;}i:113;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1650;}i:114;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:": ( debian 4.0 )
";}i:2;i:1652;}i:115;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:16:"
  SYSLOGD="-r"
";}i:2;i:3;i:3;s:22:" bash>
  SYSLOGD="-r"
";}i:2;i:1674;}i:116;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1703;}i:117;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1703;}i:118;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"Passende Nachrichten in Datei '/var/log/beispiel' schreiben:";}i:2;i:1705;}i:119;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1765;}i:120;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1765;}i:121;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:1767;}i:122;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"/etc/syslog.conf";}i:2;i:1769;}i:123;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:1785;}i:124;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" :
";}i:2;i:1787;}i:125;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:36:"
local5.info     -/var/log/beispiel
";}i:2;i:3;i:3;s:37:">
local5.info     -/var/log/beispiel
";}i:2;i:1795;}i:126;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1839;}i:127;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1839;}i:128;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"Syslog neu starten:";}i:2;i:1841;}i:129;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1860;}i:130;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:28:"/etc/init.d/sysklogd restart";}i:2;i:1860;}i:131;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1893;}i:132;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"Absender-Rechner:";i:1;i:2;i:2;i:1893;}i:2;i:1893;}i:133;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1893;}i:134;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1893;}i:135;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"/etc/syslog.conf:";}i:2;i:1923;}i:136;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1940;}i:137;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:28:"local5.info     @zielrechner";}i:2;i:1940;}i:138;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1940;}i:139;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"Syslog neu einlesen:";}i:2;i:1973;}i:140;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1993;}i:141;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:28:"/etc/init.d/sysklogd restart";}i:2;i:1993;}i:142;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1993;}i:143;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Testen: Meldung abschicken:";}i:2;i:2026;}i:144;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2053;}i:145;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:35:"logger -p local5.info "Testmeldung"";}i:2;i:2053;}i:146;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2093;}i:147;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"syslog-ng";i:1;i:1;i:2;i:2093;}i:2;i:2093;}i:148;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:2093;}i:149;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2093;}i:150;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"Beispiel: Eine eigene log-Regel schreiben:";}i:2;i:2117;}i:151;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2159;}i:152;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2159;}i:153;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2161;}i:154;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"/etc/syslog-ng/syslog-ng.conf.in";}i:2;i:2163;}i:155;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2195;}i:156;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:": (SuSE bis 10.1)";}i:2;i:2197;}i:157;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2214;}i:158;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2214;}i:159;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2216;}i:160;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"/etc/syslog-ng/syslog-ng.conf";}i:2;i:2218;}i:161;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2247;}i:162;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:": (SuSE ab 10.2)
";}i:2;i:2249;}i:163;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:185:"
filter f_ingo { 
  level(warn) and program(logger); 
};
destination ingo_log { 
  file("/var/log/ingo.log"); 
};
log { 
  source(src); 
  filter(f_ingo); 
  destination(ingo_log); 
};
";}i:2;i:3;i:3;s:186:">
filter f_ingo { 
  level(warn) and program(logger); 
};
destination ingo_log { 
  file("/var/log/ingo.log"); 
};
log { 
  source(src); 
  filter(f_ingo); 
  destination(ingo_log); 
};
";}i:2;i:2271;}i:164;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"
Configdatei überprüfen:";}i:2;i:2464;}i:165;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2490;}i:166;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:12:"syslog-ng -s";}i:2;i:2490;}i:167;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2490;}i:168;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"Dienst neu starten und evtl. SuSEconfig glücklich machen";}i:2;i:2507;}i:169;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2564;}i:170;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:60:"/sbin/conf.d/SuSEconfig.syslog-ng
/etc/init.d/syslog restart";}i:2;i:2564;}i:171;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2564;}i:172;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"Testen:";}i:2;i:2631;}i:173;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2638;}i:174;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:59:"logger -p local1.warn -t logger "Dies ist eine Testmeldung"";}i:2;i:2638;}i:175;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2638;}i:176;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"Beispiel: Logdaten von einem Rechner auf den nächsten übertragen";}i:2;i:2702;}i:177;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2768;}i:178;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2770;}i:179;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Zielrechner:";i:1;i:2;i:2;i:2770;}i:2;i:2770;}i:180;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2770;}i:181;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2770;}i:182;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"Zielrechner netzwerkfähig machen :";}i:2;i:2795;}i:183;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2830;}i:184;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2830;}i:185;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2832;}i:186;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"/etc/syslog-ng/syslog-ng.conf.in";}i:2;i:2834;}i:187;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2866;}i:188;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:": (SuSE bis 10.1)";}i:2;i:2868;}i:189;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2885;}i:190;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2885;}i:191;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:2887;}i:192;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"/etc/syslog-ng/syslog-ng.conf";}i:2;i:2889;}i:193;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:2918;}i:194;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:": (SuSE ab 10.2)";}i:2;i:2920;}i:195;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2936;}i:196;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2936;}i:197;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:59:"
source src{

  ...

  udp(ip("0.0.0.0") port(514));

};  
";}i:2;i:3;i:3;s:60:">
source src{

  ...

  udp(ip("0.0.0.0") port(514));

};  
";}i:2;i:2943;}i:198;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3010;}i:199;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3010;}i:200;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:"Meldungen bestimmter Log-Facilities und Log-Priorities werden durch Filter und Destination definiert";}i:2;i:3012;}i:201;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3112;}i:202;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3112;}i:203;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:197:"
filter f_local5 { 
  level(info) and facility(local5); 
}; 

destination d_local5 { 
  file("/var/log/beispiel"); 
};

log { 
  source(src) ; 
  filter(f_local5) ; 
  destination(d_local5); 
};  
";}i:2;i:3;i:3;s:198:">
filter f_local5 { 
  level(info) and facility(local5); 
}; 

destination d_local5 { 
  file("/var/log/beispiel"); 
};

log { 
  source(src) ; 
  filter(f_local5) ; 
  destination(d_local5); 
};  
";}i:2;i:3119;}i:204;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3324;}i:205;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3324;}i:206;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"Danach ";}i:2;i:3326;}i:207;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:3333;}i:208;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"SuSEconfig";}i:2;i:3335;}i:209;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:3345;}i:210;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:" oder ";}i:2;i:3347;}i:211;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:3353;}i:212;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"/sbin/conf.d/SuSEconfig.syslog-ng";}i:2;i:3355;}i:213;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:3388;}i:214;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:" aufrufen um die Änderungen permanent zu übertragen und syslog-ng reloaden.";}i:2;i:3390;}i:215;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3468;}i:216;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:15:"rcsyslog reload";}i:2;i:3468;}i:217;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3488;}i:218;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"Absender-Rechner";i:1;i:2;i:2;i:3488;}i:2;i:3488;}i:219;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:3488;}i:220;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3488;}i:221;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:3517;}i:222;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"/etc/syslog-ng/syslog-ng.conf.in";}i:2;i:3519;}i:223;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:3551;}i:224;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:": (SuSE bis 10.1)";}i:2;i:3553;}i:225;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3570;}i:226;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3570;}i:227;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:3572;}i:228;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"/etc/syslog-ng/syslog-ng.conf";}i:2;i:3574;}i:229;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:3603;}i:230;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:": (SuSE ab 10.2)";}i:2;i:3605;}i:231;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3621;}i:232;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3621;}i:233;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:102:"
destination d_ziel { udp( "Zielrechner" port(514) ); };

log { source(src); destination(d_ziel);  };
";}i:2;i:3;i:3;s:103:">
destination d_ziel { udp( "Zielrechner" port(514) ); };

log { source(src); destination(d_ziel);  };
";}i:2;i:3628;}i:234;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3738;}i:235;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3738;}i:236;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:3740;}i:237;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"SuSEconfig";}i:2;i:3742;}i:238;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:3752;}i:239;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:" aufrufen zum Ändern der Konfigdatei und syslog reloaden";}i:2;i:3754;}i:240;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3811;}i:241;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3811;}i:242;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"  rcsyslog reload";}i:2;i:3814;}i:243;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3831;}i:244;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3833;}i:245;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:4:"Doku";i:1;i:1;i:2;i:3833;}i:2;i:3833;}i:246;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:3833;}i:247;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:3851;}i:248;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3851;}i:249;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3851;}i:250;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:" Facility:";}i:2;i:3855;}i:251;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3865;}i:252;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3865;}i:253;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:3865;}i:254;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3865;}i:255;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"Nicht jedes Linux/Unix hat alle Facilities:
";}i:2;i:3867;}i:256;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:1604:"
  Facility        Description              
  ----------------------------                                                        
  auth/security   Activity related to requesting name and password (getty, su, login)              
  authpriv        Same as auth but logged to a file that can only be read by selected users        
  console         Used to capture messages that would generally be directed to the system console  
  cron            Messages from the cron system scheduler                                          
  daemon          System daemon catch-all                                                          
  ftp             Messages relating to the ftp daemon                                              
  kern            Kernel messages                                                                  
  local0.local7   <Local facilities defined per site                                               
  lpr             Messages from the line printing system                                           
  mail            Messages relating to the mail system                                             
  mark            Pseudo event used to generate timestamps in log files                            
  news            Messages relating to network news protocol (nntp)                                
  ntp             Messages relating to network time protocol                                       
  syslog          Syslog service
  user            Regular user processes                                                           
  uucp            UUCP subsystem      
";}i:2;i:3;i:3;s:1605:">
  Facility        Description              
  ----------------------------                                                        
  auth/security   Activity related to requesting name and password (getty, su, login)              
  authpriv        Same as auth but logged to a file that can only be read by selected users        
  console         Used to capture messages that would generally be directed to the system console  
  cron            Messages from the cron system scheduler                                          
  daemon          System daemon catch-all                                                          
  ftp             Messages relating to the ftp daemon                                              
  kern            Kernel messages                                                                  
  local0.local7   <Local facilities defined per site                                               
  lpr             Messages from the line printing system                                           
  mail            Messages relating to the mail system                                             
  mark            Pseudo event used to generate timestamps in log files                            
  news            Messages relating to network news protocol (nntp)                                
  ntp             Messages relating to network time protocol                                       
  syslog          Syslog service
  user            Regular user processes                                                           
  uucp            UUCP subsystem      
";}i:2;i:3916;}i:257;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:5528;}i:258;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5529;}i:259;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:5529;}i:260;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:5529;}i:261;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:5529;}i:262;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:" Level (Severity): ";}i:2;i:5533;}i:263;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:5552;}i:264;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:5552;}i:265;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:5552;}i:266;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5552;}i:267;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:519:"
emerg    Emergency condition, such as an imminent system crash, usually broadcast to all users
alert    Condition that should be corrected immediately, such as a corrupted system database
crit     Critical condition, such as a hardware error
err      Ordinary error
warning  Warning
notice   Condition that is not an error, but possibly should be handled in a special way
info     Informational message
debug    Messages that are used when debugging programs
none     Pseudo level used to specify not to log messages.
";}i:2;i:3;i:3;s:520:">
emerg    Emergency condition, such as an imminent system crash, usually broadcast to all users
alert    Condition that should be corrected immediately, such as a corrupted system database
crit     Critical condition, such as a hardware error
err      Ordinary error
warning  Warning
notice   Condition that is not an error, but possibly should be handled in a special way
info     Informational message
debug    Messages that are used when debugging programs
none     Pseudo level used to specify not to log messages.
";}i:2;i:5559;}i:268;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:6086;}i:269;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:6087;}i:270;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:125:"debug, info, notice, warning, warn (same as warning), err, error (same as err), crit, alert, emerg,  panic  (same  as  emerg)";}i:2;i:6089;}i:271;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:6214;}i:272;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6216;}i:273;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6216;}i:274;a:3:{i:0;s:4:"nest";i:1;a:1:{i:0;a:5:{i:0;a:3:{i:0;s:13:"footnote_open";i:1;a:0:{}i:2;i:6218;}i:1;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"
Testskript für Alles
";}i:2;i:6220;}i:2;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:265:"for fac in auth authpriv cron daemon ftp kern lpr mail mark news syslog user uucp local0 local1 local2 local3 local4 local5 local6 local7; do 
  for lev in debug info notice warning err crit alert emerg; do 
    logger -p "${fac}.${lev}" "${fac}.${lev}"
  done
done";}i:2;i:3;i:3;s:271:" bash>for fac in auth authpriv cron daemon ftp kern lpr mail mark news syslog user uucp local0 local1 local2 local3 local4 local5 local6 local7; do 
  for lev in debug info notice warning err crit alert emerg; do 
    logger -p "${fac}.${lev}" "${fac}.${lev}"
  done
done";}i:2;i:6248;}i:3;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:6526;}i:4;a:3:{i:0;s:14:"footnote_close";i:1;a:0:{}i:2;i:6527;}}}i:2;i:6218;}i:275;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6529;}i:276;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6531;}i:277;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"Syslog";i:1;i:2;i:2;i:6531;}i:2;i:6531;}i:278;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:6531;}i:279;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:6549;}i:280;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:6549;}i:281;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:6549;}i:282;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:6553;}i:283;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:79:"http://de.linwiki.org/wiki/Linuxfibel_-_System-Administration_-_Protokollierung";i:1;N;}i:2;i:6554;}i:284;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:6633;}i:285;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:6633;}i:286;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:6633;}i:287;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6635;}i:288;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"Syslog-NG";i:1;i:2;i:2;i:6635;}i:2;i:6635;}i:289;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:6635;}i:290;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:6656;}i:291;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:6656;}i:292;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:6656;}i:293;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:6660;}i:294;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:74:"http://www.linux-magazin.de/Artikel/ausgabe/2003/11/tagebuch/tagebuch.html";i:1;N;}i:2;i:6661;}i:295;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:6735;}i:296;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:6735;}i:297;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:6735;}i:298;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:6735;}i:299;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:6739;}i:300;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:63:"http://www.wikidorf.de/reintechnisch/Inhalt/SyslogNGEinfuehrung";i:1;N;}i:2;i:6740;}i:301;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:6803;}i:302;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:6803;}i:303;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:6803;}i:304;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:6803;}i:305;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:6807;}i:306;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:81:"http://www.balabit.com/products/syslog_ng/reference-1.6/syslog-ng.html/book1.html";i:1;N;}i:2;i:6808;}i:307;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:6889;}i:308;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:6889;}i:309;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:6889;}i:310;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6889;}i:311;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"Vorraussetzung: ";}i:2;i:6892;}i:312;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:4:"cron";i:1;N;}i:2;i:6908;}i:313;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6916;}i:314;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:6916;}i:315;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:6916;}i:316;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:6916;}i:317;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:6920;}i:318;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:6921;}i:319;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"/etc/logrotate.conf";}i:2;i:6923;}i:320;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:6942;}i:321;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:6944;}i:322;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:6944;}i:323;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:6944;}i:324;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:6944;}i:325;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:6948;}i:326;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:6949;}i:327;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"/etc/logrotate.d/*";}i:2;i:6951;}i:328;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:6969;}i:329;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:6971;}i:330;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:6971;}i:331;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:6971;}i:332;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6973;}i:333;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:38:"Neue Logdatei zu logrotate hinzufügen";i:1;i:2;i:2;i:6973;}i:2;i:6973;}i:334;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:6973;}i:335;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7024;}i:336;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"Debian 5.0";i:1;i:4;i:2;i:7024;}i:2;i:7024;}i:337;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:7024;}i:338;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7024;}i:339;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:7043;}i:340;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"/etc/logrotate.d/ingo";}i:2;i:7045;}i:341;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:7066;}i:342;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" :
";}i:2;i:7068;}i:343;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:125:"
/var/log/ingo.log {
    compress
    size=+10
    postrotate
        /etc/init.d/rsyslog reload > /dev/null
    endscript
}
";}i:2;i:3;i:3;s:126:">
/var/log/ingo.log {
    compress
    size=+10
    postrotate
        /etc/init.d/rsyslog reload > /dev/null
    endscript
}
";}i:2;i:7076;}i:344;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:7209;}i:345;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7210;}i:346;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7210;}i:347;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Ubuntu 12.04";i:1;i:4;i:2;i:7210;}i:2;i:7210;}i:348;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:7210;}i:349;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7210;}i:350;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:7231;}i:351;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"/etc/logrotate.d/ingo";}i:2;i:7233;}i:352;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:7254;}i:353;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" :
";}i:2;i:7256;}i:354;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:123:"
/var/log/ingo.log {
    compress
    size=+10
    postrotate
      reload rsyslog >/dev/null 2>&1 || true
    endscript
}
";}i:2;i:3;i:3;s:124:">
/var/log/ingo.log {
    compress
    size=+10
    postrotate
      reload rsyslog >/dev/null 2>&1 || true
    endscript
}
";}i:2;i:7264;}i:355;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:7395;}i:356;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7396;}i:357;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7396;}i:358;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"SuSE 12.3";i:1;i:4;i:2;i:7396;}i:2;i:7396;}i:359;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:7396;}i:360;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7396;}i:361;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:7414;}i:362;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"/etc/logrotate.d/ingo";}i:2;i:7416;}i:363;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:7437;}i:364;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" :
";}i:2;i:7439;}i:365;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:122:"
/var/log/ingo.log {
    compress
    size=+10
    nodateext
    postrotate
        service reload syslog
    endscript
}
";}i:2;i:3;i:3;s:123:">
/var/log/ingo.log {
    compress
    size=+10
    nodateext
    postrotate
        service reload syslog
    endscript
}
";}i:2;i:7447;}i:366;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7577;}i:367;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7579;}i:368;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"CentOS 6";i:1;i:4;i:2;i:7579;}i:2;i:7579;}i:369;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:7579;}i:370;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7579;}i:371;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:7596;}i:372;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"/etc/logrotate.d/ingo";}i:2;i:7598;}i:373;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:7619;}i:374;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" :
";}i:2;i:7621;}i:375;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:178:"
/var/log/ingo.log {
  size=+10
  dateformat %Y%m%d-%s
  sharedscripts
  postrotate
    /bin/kill -HUP `cat /var/run/syslogd.pid 2> /dev/null` 2> /dev/null || true
  endscript
}
";}i:2;i:3;i:3;s:179:">
/var/log/ingo.log {
  size=+10
  dateformat %Y%m%d-%s
  sharedscripts
  postrotate
    /bin/kill -HUP `cat /var/run/syslogd.pid 2> /dev/null` 2> /dev/null || true
  endscript
}
";}i:2;i:7629;}i:376;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7815;}i:377;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7817;}i:378;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"testen";i:1;i:3;i:2;i:7817;}i:2;i:7817;}i:379;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:7817;}i:380;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:98:"echo 12345678901234567890 >> /var/log/ingo.log
logrotate /etc/logrotate.conf
ls /var/log/ingo.log*";}i:2;i:7833;}i:381;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7942;}i:382;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"journalctl";i:1;i:2;i:2;i:7942;}i:2;i:7942;}i:383;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:7942;}i:384;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7942;}i:385;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"gleich ans Ende springen";}i:2;i:7965;}i:386;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7989;}i:387;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:13:"journalctl -e";}i:2;i:7989;}i:388;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7989;}i:389;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"follow file mit allem und catalog";}i:2;i:8007;}i:390;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8040;}i:391;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:19:"journalctl -f -a -x";}i:2;i:8040;}i:392;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8040;}i:393;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"alle Felder aufschlüsseln";}i:2;i:8064;}i:394;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8090;}i:395;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:21:"journalctl -o verbose";}i:2;i:8090;}i:396;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8090;}i:397;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"seit dem letztem Boot";}i:2;i:8116;}i:398;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8137;}i:399;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:13:"journalctl -b";}i:2;i:8137;}i:400;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8137;}i:401;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"in einem bestimmten Zeitraum";}i:2;i:8155;}i:402;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8183;}i:403;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:59:"journalctl --since "2016-01-10" --until "2016-01-11 03:00"
";}i:2;i:8183;}i:404;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8183;}i:405;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"ab einem bestimmten Level";}i:2;i:8248;}i:406;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8273;}i:407;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:37:"journalctl -p 4
journalctl -p warning";}i:2;i:8273;}i:408;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:8316;}i:409;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:35:"Meldungen eines bestimmten Dienstes";i:1;i:3;i:2;i:8316;}i:2;i:8316;}i:410;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:8316;}i:411;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:88:"journalctl _SYSTEMD_UNIT=ssh.service
journalctl -u ssh.service
journalctl /usr/sbin/sshd";}i:2;i:8361;}i:412;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:8458;}i:413;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"Kernel Meldungen";i:1;i:4;i:2;i:8458;}i:2;i:8458;}i:414;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:8458;}i:415;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:13:"journalctl -k";}i:2;i:8482;}i:416;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:8500;}i:417;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Ins Journal schreiben";i:1;i:4;i:2;i:8500;}i:2;i:8500;}i:418;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:8500;}i:419;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:16:"ls | systemd-cat";}i:2;i:8529;}i:420;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:8549;}i:421;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"Größe beschränken";i:1;i:3;i:2;i:8549;}i:2;i:8549;}i:422;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:8549;}i:423;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8549;}i:424;a:3:{i:0;s:14:"monospace_open";i:1;a:0:{}i:2;i:8580;}i:425;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"/etc/systemd/journald.conf";}i:2;i:8582;}i:426;a:3:{i:0;s:15:"monospace_close";i:1;a:0:{}i:2;i:8608;}i:427;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" :
";}i:2;i:8610;}i:428;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_file";i:1;a:4:{i:0;s:4:"file";i:1;N;i:2;s:0:"";i:3;s:37:"
SystemMaxUse=100M
SystemKeepFree=1G
";}i:2;i:3;i:3;s:38:">
SystemMaxUse=100M
SystemKeepFree=1G
";}i:2;i:8618;}i:429;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8663;}i:430;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:8665;}i:431;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:4:"Doku";i:1;i:2;i:2;i:8665;}i:2;i:8665;}i:432;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:8665;}i:433;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:8681;}i:434;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:8681;}i:435;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:8681;}i:436;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:8685;}i:437;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:48:"http://0pointer.de/blog/projects/journalctl.html";i:1;N;}i:2;i:8686;}i:438;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:8734;}i:439;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:8734;}i:440;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:8734;}i:441;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:8735;}i:442;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:8735;}}