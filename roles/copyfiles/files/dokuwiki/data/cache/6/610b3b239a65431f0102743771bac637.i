a:56:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"Schlüsselpaar erstellen";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:24:"DISPLAY='' gpg --gen-key";}i:2;i:37;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:65;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"Öffentliche Schlüssel anzeigen";i:1;i:2;i:2;i:65;}i:2;i:65;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:65;}i:7;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:15:"gpg --list-keys";}i:2;i:109;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:128;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"Private Schlüssel anzeigen";i:1;i:2;i:2;i:128;}i:2;i:128;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:128;}i:11;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:22:"gpg --list-secret-keys";}i:2;i:167;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:193;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Signaturen anzeigen";i:1;i:2;i:2;i:193;}i:2;i:193;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:193;}i:15;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:26:"gpg --list-sigs 0x473041FA";}i:2;i:224;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:254;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"Datei verschlüsseln";i:1;i:2;i:2;i:254;}i:2;i:254;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:254;}i:19;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:73:"cp /etc/passwd .
gpg --encrypt --recipient 'Ingo Wichmann' --armor passwd";}i:2;i:286;}i:20;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:365;}i:21;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"Datei entschlüsseln";i:1;i:2;i:2;i:365;}i:2;i:365;}i:22;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:365;}i:23;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:24:"gpg --decrypt passwd.asc";}i:2;i:397;}i:24;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:425;}i:25;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"Datei signieren";i:1;i:2;i:2;i:425;}i:2;i:425;}i:26;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:425;}i:27;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:25:"gpg --sign --armor passwd";}i:2;i:452;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:452;}i:29;a:3:{i:0;s:4:"nest";i:1;a:1:{i:0;a:4:{i:0;a:3:{i:0;s:13:"footnote_open";i:1;a:0:{}i:2;i:481;}i:1;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"  Signatur in separater Datei, z.B. für Debian Release Dateien";}i:2;i:483;}i:2;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:32:"gpg --detach-sign --armor passwd";}i:2;i:546;}i:3;a:3:{i:0;s:14:"footnote_close";i:1;a:0:{}i:2;i:582;}}}i:2;i:481;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:584;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:585;}i:32;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:585;}i:33;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"Datei überprüfen";i:1;i:2;i:2;i:585;}i:2;i:585;}i:34;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:585;}i:35;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:31:"gpg --verify --armor passwd.asc";}i:2;i:615;}i:36;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:650;}i:37;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:36:"Öffentlichen Schlüssel weitergeben";i:1;i:2;i:2;i:650;}i:2;i:650;}i:38;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:650;}i:39;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:141:"gpg --export --armor "Ingo Wichmann" > /tmp/schluessel
# gpg --send-keys 'Ingo Wichmann' # Bitte nicht mit Testschlüsseln
mv passwd.asc /tmp";}i:2;i:698;}i:40;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:847;}i:41;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:36:"Öffentlichen Schlüssel importieren";i:1;i:2;i:2;i:847;}i:2;i:847;}i:42;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:847;}i:43;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:198:"gpg --import --armor /tmp/schluessel
gpg --edit-key 'Ingo Wichmann'
trust
5
gpg --verify /tmp/passwd.asc

gpg --search-keys 'Ingo Wichmann'  
gpg --keyserver wwwkeys.uk.pgp.net --recv-key 0x473041FA";}i:2;i:895;}i:44;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1112;}i:45;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Schlüssel widerrufen";i:1;i:2;i:2;i:1112;}i:2;i:1112;}i:46;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1112;}i:47;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:32:"gpg --gen-revoke 'Ingo Wichmann'";}i:2;i:1145;}i:48;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1182;}i:49;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Dokumentation";i:1;i:2;i:2;i:1182;}i:2;i:1182;}i:50;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1182;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1182;}i:52;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:53:"http://www.stierand-linuxit.de/Doku/gpg-tutorial.html";i:1;N;}i:2;i:1209;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1262;}i:54;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1263;}i:55;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1263;}}