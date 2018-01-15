a:14:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:206:"Manchmal kommt es vor das sich die SCCM Konsole nicht bearbeiten lässt da bereits ein andere Benutzer diese bearbeitet. Um die Bearbeitung zu entfernen muss ein delete in der Datenbank ausgeführt werden. ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:207;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:207;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"auslesen welche Benutzer in Bearbeitung sind :  
";}i:2;i:209;}i:6;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:3:"sql";i:2;s:0:"";i:3;s:54:"
 select * from SEDO_LockState where LockStateID <> 0
";}i:2;i:3;i:3;s:59:" sql>
 select * from SEDO_LockState where LockStateID <> 0
";}i:2;i:263;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:329;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:329;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"löschen eines Eintrags 
";}i:2;i:331;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:3:"sql";i:2;s:0:"";i:3;s:101:"
DELETE from SEDO_LockState where LockID = '<LockID of the record identified in the previous query>'
";}i:2;i:3;i:3;s:106:" sql>
DELETE from SEDO_LockState where LockID = '<LockID of the record identified in the previous query>'
";}i:2;i:361;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:474;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:474;}i:13;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:474;}}