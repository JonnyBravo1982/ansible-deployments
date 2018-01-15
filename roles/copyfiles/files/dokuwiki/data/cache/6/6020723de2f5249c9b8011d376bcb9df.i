a:51:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:420:"nginx {en} (gesprochen „engine x”) ist ein Webserver, der im Vergleich zum Marktführer Apache sehr schnell und schlank ist. Er wurde mit der Vorgabe konzipiert, selbst unter hoher Last nur wenig Ressourcen zu verbrauchen. nginx wird von Igor Sysoev entwickelt und wird laut w3techs.com Statsitik {en} von ca. 30 % aller Websites genutzt (Stand: Sommer 2016). Damit ist nginx der am 2. meisten eingesetzte Webserver.";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:421;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:421;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"nginx als Webserver mit SSL konfigurieren. ";}i:2;i:423;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:466;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:466;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"Im Verzeichnis /etc/nginx/site-available/ wird eine Konfigurationsdatei angelegt. Beispiel. ";}i:2;i:468;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:560;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:560;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:212:"
server {
	listen 80;
	listen [::]:80;
	root /var/www/html/Testsite;
	index index.html;
	server_name localhost.localdomain rrot-armhf www.Testsite.de Testsite.de;
	location / {
		try_files $uri $uri/ =404;
	}
}

";}i:2;i:3;i:3;s:213:">
server {
	listen 80;
	listen [::]:80;
	root /var/www/html/Testsite;
	index index.html;
	server_name localhost.localdomain rrot-armhf www.Testsite.de Testsite.de;
	location / {
		try_files $uri $uri/ =404;
	}
}

";}i:2;i:567;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:787;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:787;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:"Diese Datei bekommt nun einen symbolischen Link nach /etc/nginx/sites-enable";}i:2;i:789;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:865;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:865;}i:17;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:69:"
ln -s /etc/nginx/sites-available/Testsite /etc/nginx/sites-enabled/
";}i:2;i:3;i:3;s:70:">
ln -s /etc/nginx/sites-available/Testsite /etc/nginx/sites-enabled/
";}i:2;i:872;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:949;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:949;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:125:"Nach einem Serviceneustart ist die Website zu erreichen.
Als nächstes wird ein Zertifkat erstellt und im nging eingebunden. ";}i:2;i:951;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1076;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1076;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"OpenSSL CA erstellen: ";}i:2;i:1078;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1100;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1100;}i:26;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:144:"openssl genrsa -aes256 -out ca-key.pem 2048
openssl req -x509 -new -nodes -extensions v3_ca -key ca-key.pem -days 1024 -out ca-root.pem -sha512
";}i:2;i:3;i:3;s:145:">openssl genrsa -aes256 -out ca-key.pem 2048
openssl req -x509 -new -nodes -extensions v3_ca -key ca-key.pem -days 1024 -out ca-root.pem -sha512
";}i:2;i:1108;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1260;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1260;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"Danach das Webserver zertifikate ersellen: 
";}i:2;i:1262;}i:30;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:244:" 
openssl genrsa -out zertifikat-key.pem 4096
openssl req -new -key zertifikat-key.pem -out zertifikat.csr -sha512
openssl x509 -req -in zertifikat.csr -CA ca-root.pem -CAkey ca-key.pem -CAcreateserial -out zertifikat-pub.pem -days 365 -sha512
";}i:2;i:3;i:3;s:245:"> 
openssl genrsa -out zertifikat-key.pem 4096
openssl req -new -key zertifikat-key.pem -out zertifikat.csr -sha512
openssl x509 -req -in zertifikat.csr -CA ca-root.pem -CAkey ca-key.pem -CAcreateserial -out zertifikat-pub.pem -days 365 -sha512
";}i:2;i:1311;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1563;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1563;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:126:"Um nginx mitzuteilen wo die Zertifkate liegen wird die die /etc/nginx/snippets/self-signed.conf angelegt.Mit folgenden Inhalt ";}i:2;i:1565;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1691;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1691;}i:36;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:103:"
ssl_certificate /var/www/ssl/zertifikat-pub.pem;
ssl_certificate_key /var/www/ssl/zertifikat-key.pem;
";}i:2;i:3;i:3;s:104:">
ssl_certificate /var/www/ssl/zertifikat-pub.pem;
ssl_certificate_key /var/www/ssl/zertifikat-key.pem;
";}i:2;i:1698;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1809;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1809;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:117:"Für die SSL-Konfiguriert wird eine weitere File angelegt etc/nginx/snippets/ssl-params.conf. Mit folgenden Inhalt : ";}i:2;i:1811;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1928;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1928;}i:42;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:191:"
ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
ssl_prefer_server_ciphers on;
ssl_ciphers "EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH";
ssl_ecdh_curve secp384r1;
ssl_session_cache shared:SSL:10m;
";}i:2;i:3;i:3;s:192:">
ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
ssl_prefer_server_ciphers on;
ssl_ciphers "EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH";
ssl_ecdh_curve secp384r1;
ssl_session_cache shared:SSL:10m;
";}i:2;i:1935;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2134;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2134;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:113:"Zum Schluss beabeiten wir die Serverkonfigurationsdatei erneut und sagen ihn auf welchen Port er zugreifen kann. ";}i:2;i:2136;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2249;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2249;}i:48;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:321:"
server {
	listen 80;
	listen 442 ssl;
	listen [::]:80;
	listen [::]:443 ssl;
	root /var/www/html/Testsite;
	index index.html;
	server_name localhost.localdomain rrot-armhf www.Testsite.de Testsite.de;
	include snippets/self-signed.conf;
	include snippets/ssl-params.conf;
	location / {
		try_files $uri $uri/ =404;
	}
}
";}i:2;i:3;i:3;s:322:">
server {
	listen 80;
	listen 442 ssl;
	listen [::]:80;
	listen [::]:443 ssl;
	root /var/www/html/Testsite;
	index index.html;
	server_name localhost.localdomain rrot-armhf www.Testsite.de Testsite.de;
	include snippets/self-signed.conf;
	include snippets/ssl-params.conf;
	location / {
		try_files $uri $uri/ =404;
	}
}
";}i:2;i:2256;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2585;}i:50;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2585;}}