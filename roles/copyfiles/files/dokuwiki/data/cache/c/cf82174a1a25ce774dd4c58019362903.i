a:95:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"Apache";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:23;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"Virtuele Hosts";i:1;i:2;i:2;i:23;}i:2;i:23;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:23;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:23;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:178:"Im Ordner /etc/apache2/sites-available können Virtuele Host definieren werden. Virtuele Host werden benötigt um mehrere Webseiten auf einen Server zu betreiben.
Mit dem Befehl ";}i:2;i:52;}i:8;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:230;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"a2ensite";}i:2;i:232;}i:10;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:240;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:" wird die Webseite registriert. 
Der Befehl ";}i:2;i:242;}i:12;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:286;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"a2enmod proxy";}i:2;i:288;}i:14;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:301;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" installiert das Proxymodul.";}i:2;i:303;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:331;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:331;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"Step by Step Anleitunug:
1. Module installieren 
";}i:2;i:335;}i:19;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:5:"linux";i:2;s:0:"";i:3;s:72:"
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo service apache2 reload
";}i:2;i:3;i:3;s:79:" linux>
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo service apache2 reload
";}i:2;i:389;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:475;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:475;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"2. File erstellen  in ";}i:2;i:477;}i:23;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:499;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"/etc/apache2/sites-available/jonnywordpress.conf";}i:2;i:501;}i:25;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:549;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:551;}i:27;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:6:"apache";i:2;s:0:"";i:3;s:212:"
<VirtualHost *:80>
#ProxyPreserveHost On
#ProxyRequests Off
ServerName jonnywordpress
ProxyPass               /       http://localhost:8081/
ProxyPassReverse        /       http://localhost:8081/
</VirtualHost>
";}i:2;i:3;i:3;s:220:" apache>
<VirtualHost *:80>
#ProxyPreserveHost On
#ProxyRequests Off
ServerName jonnywordpress
ProxyPass               /       http://localhost:8081/
ProxyPassReverse        /       http://localhost:8081/
</VirtualHost>
";}i:2;i:557;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:784;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:784;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"3. File registrieren 
";}i:2;i:786;}i:31;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:5:"linux";i:2;s:0:"";i:3;s:113:"
a2ensite /etc/apache2/sites-available/jonnywordpress.conf  #deaktvieren mit a2dissite 
service apache2 reloade 
";}i:2;i:3;i:3;s:120:" linux>
a2ensite /etc/apache2/sites-available/jonnywordpress.conf  #deaktvieren mit a2dissite 
service apache2 reloade 
";}i:2;i:813;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:940;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:940;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:103:"Der Virtuelle Host der auf den Port 8081 lag, wurde umgeleitet auf den Port 80 und ist über den Namen ";}i:2;i:942;}i:35;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1045;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"jonnywordpress";}i:2;i:1046;}i:37;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1060;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:" erreichbar (evtl. hosts Datei anpassen).  ";}i:2;i:1061;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1104;}i:40;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1108;}i:41;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"OpenSSL and Apache";i:1;i:3;i:2;i:1108;}i:2;i:1108;}i:42;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1108;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1108;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:"Step by Step: 
1. Im ersten Schritt wird ein privater Schlüssel erstellt 
";}i:2;i:1138;}i:45;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:5:"linux";i:2;s:0:"";i:3;s:54:"
openssl genrsa -out /etc/ssl/private/apache.key 4096
";}i:2;i:3;i:3;s:61:" linux>
openssl genrsa -out /etc/ssl/private/apache.key 4096
";}i:2;i:1218;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1286;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1286;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"2. Zertifikat erstellt 
";}i:2;i:1288;}i:49;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:5:"linux";i:2;s:0:"";i:3;s:107:"
openssl req -new -x509 -key /etc/ssl/private/apache.key -days 365 -sha256 -out /etc/ssl/certs/apache.crt 
";}i:2;i:3;i:3;s:114:" linux>
openssl req -new -x509 -key /etc/ssl/private/apache.key -days 365 -sha256 -out /etc/ssl/certs/apache.crt 
";}i:2;i:1317;}i:50;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1438;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1438;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"3. Um TLS/SSL verwenden zu können muss der Apache auf den TCP-Port 443 lauschen. Die Datei ";}i:2;i:1440;}i:53;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1532;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"/etc/apache2/ports.conf";}i:2;i:1534;}i:55;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1557;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:" muss wie folgt angepasst werden. 
";}i:2;i:1559;}i:57;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:5:"linux";i:2;s:0:"";i:3;s:153:"
<IfModule mod_ssl.c>
    Listen 443
</IfModule>
<code>


4. Das SSL-Modul  wird installiert
<code linux>
sudo a2enmod ssl
service apache2 force-reload 
";}i:2;i:3;i:3;s:160:" linux>
<IfModule mod_ssl.c>
    Listen 443
</IfModule>
<code>


4. Das SSL-Modul  wird installiert
<code linux>
sudo a2enmod ssl
service apache2 force-reload 
";}i:2;i:1599;}i:58;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1766;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1766;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"5. SSL-Webseite konfigurieren und Anpassung ";}i:2;i:1768;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1812;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1812;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"- dazu wird die Datei ";}i:2;i:1814;}i:64;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1836;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"/etc/apache2/sites-available/ssl.conf";}i:2;i:1838;}i:66;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1875;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:" erstellt mit folgenden Inhalten (der Name spielt keine rolle)  
";}i:2;i:1877;}i:68;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:5:"linux";i:2;s:0:"";i:3;s:218:"
<VirtualHost *:443>
    SSLEngine on
    SSLCertificateFile /etc/ssl/certs/apache.crt
    SSLCertificateKeyFile /etc/ssl/private/apache.key
    # Pfad zu den Webinhalten
    DocumentRoot /var/www/html/
</VirtualHost>
";}i:2;i:3;i:3;s:225:" linux>
<VirtualHost *:443>
    SSLEngine on
    SSLCertificateFile /etc/ssl/certs/apache.crt
    SSLCertificateKeyFile /etc/ssl/private/apache.key
    # Pfad zu den Webinhalten
    DocumentRoot /var/www/html/
</VirtualHost>
";}i:2;i:1947;}i:69;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2179;}i:70;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2179;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"6. der Host wird nun aktiviert 
";}i:2;i:2181;}i:72;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:5:"linux";i:2;s:0:"";i:3;s:59:"
sudo a2ensite ssl.conf
sudo service apache2 force-reload 
";}i:2;i:3;i:3;s:66:" linux>
sudo a2ensite ssl.conf
sudo service apache2 force-reload 
";}i:2;i:2218;}i:73;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2291;}i:74;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2291;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"7. SSL auf der Webseite erzwingen mit mod_rewrite";}i:2;i:2294;}i:76;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2343;}i:77;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2343;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"Installation 
";}i:2;i:2345;}i:79;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:5:"linux";i:2;s:0:"";i:3;s:23:"
sudo a2enmod rewrite 
";}i:2;i:3;i:3;s:30:" linux>
sudo a2enmod rewrite 
";}i:2;i:2364;}i:80;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2401;}i:81;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2401;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:74:"und eine .htaccess Datei in /var/www/html/ erstellt mit folgenden Inhalt 
";}i:2;i:2404;}i:83;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:5:"linux";i:2;s:0:"";i:3;s:104:"
RewriteEngine On
RewriteCond %{SERVER_PORT}   !^443$
RewriteRule  (.*)  https:%{HTTP_HOST}/$1   [L]// 
";}i:2;i:3;i:3;s:111:" linux>
RewriteEngine On
RewriteCond %{SERVER_PORT}   !^443$
RewriteRule  (.*)  https:%{HTTP_HOST}/$1   [L]// 
";}i:2;i:2483;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2601;}i:85;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2601;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"Berechtigungen auf die  .htaccess setzen
";}i:2;i:2603;}i:87;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:5:"linux";i:2;s:0:"";i:3;s:35:"
chown www-data:www-data .htaccess
";}i:2;i:3;i:3;s:42:" linux>
chown www-data:www-data .htaccess
";}i:2;i:2649;}i:88;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2698;}i:89;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2698;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"zum Schluss muss noch der Port freigegeben werden 
";}i:2;i:2700;}i:91;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:5:"linux";i:2;s:0:"";i:3;s:69:"
iptables -A INPUT -p tcp --dport 443 -m state --state NEW -j ACCEPT
";}i:2;i:3;i:3;s:76:" linux>
iptables -A INPUT -p tcp --dport 443 -m state --state NEW -j ACCEPT
";}i:2;i:2756;}i:92;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2839;}i:93;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2849;}i:94;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2849;}}