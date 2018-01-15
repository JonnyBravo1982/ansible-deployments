a:136:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Alle Container löschen 
";}i:2;i:1;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:30:"
docker rm $(docker ps -a -q)
";}i:2;i:3;i:3;s:31:">
docker rm $(docker ps -a -q)
";}i:2;i:31;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"
Alle Images löschen 
";}i:2;i:69;}i:5;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:32:"
docker rmi $(docker images -q)
";}i:2;i:3;i:3;s:33:">
docker rmi $(docker images -q)
";}i:2;i:97;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:137;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:137;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"Anlegen eines logalen reposetoriers und verteilung eines Images !
";}i:2;i:139;}i:9;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:130:"
docker run -d -p 5500:5000 registry:2
docker tag test/mycow:latest localhost:5500/mycow:0.1
docker push localhost:5500/mycow:0.1
";}i:2;i:3;i:3;s:131:">
docker run -d -p 5500:5000 registry:2
docker tag test/mycow:latest localhost:5500/mycow:0.1
docker push localhost:5500/mycow:0.1
";}i:2;i:210;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:348;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:348;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:134:"Um den dockerd Distributionsübergreift zu bearbeiten eignet sich am besten die Datei /etc/docker/daemon.json an zulegen 
daemon.json
";}i:2;i:350;}i:13;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:1270:"
{
"authorization-plugins": [],
"dns": [],
"dns-opts": [],
"dns-search": [],
"exec-opts": [],
Persönliches Exemplar für Daniel Schlaupitz
1254
Docker
"exec-root": "",
"storage-driver": "",
"storage-opts": [],
"labels": [],
"live-restore": true,
"log-driver": "",
"log-opts": {},
"mtu": 0,
"pidfile": "",
"graph": "",
"cluster-store": "",
"cluster-store-opts": {},
"cluster-advertise": "",
"max-concurrent-downloads": 3,
"max-concurrent-uploads": 5,
"debug": true,
"hosts": [],
"log-level": "",
"tls": true,
"tlsverify": true,
"tlscacert": "",
"tlscert": "",
"tlskey": "",
"swarm-default-advertise-addr": "",
"api-cors-header": "",
"selinux-enabled": false,
"userns-remap": "",
"group": "",
"cgroup-parent": "",
"default-ulimits": {},
"ipv6": false,
"iptables": false,
"ip-forward": false,
"ip-masq": false,
"userland-proxy": false,
"ip": "0.0.0.0",
"bridge": "",
"bip": "",
"fixed-cidr": "",
"fixed-cidr-v6": "",
"default-gateway": "",
"default-gateway-v6": "",
"icc": false,
"raw-logs": false,
"registry-mirrors": [],
"insecure-registries": [],
"disable-legacy-registry": false,
"default-runtime": "runc",
"oom-score-adjust": -500,
"runtimes": {
"runc": {
"path": "runc"
},
"custom": {
"path": "/usr/local/bin/my-runc-replacement",
"runtimeArgs": [
"--debug"
]
}
}
}
";}i:2;i:3;i:3;s:1271:">
{
"authorization-plugins": [],
"dns": [],
"dns-opts": [],
"dns-search": [],
"exec-opts": [],
Persönliches Exemplar für Daniel Schlaupitz
1254
Docker
"exec-root": "",
"storage-driver": "",
"storage-opts": [],
"labels": [],
"live-restore": true,
"log-driver": "",
"log-opts": {},
"mtu": 0,
"pidfile": "",
"graph": "",
"cluster-store": "",
"cluster-store-opts": {},
"cluster-advertise": "",
"max-concurrent-downloads": 3,
"max-concurrent-uploads": 5,
"debug": true,
"hosts": [],
"log-level": "",
"tls": true,
"tlsverify": true,
"tlscacert": "",
"tlscert": "",
"tlskey": "",
"swarm-default-advertise-addr": "",
"api-cors-header": "",
"selinux-enabled": false,
"userns-remap": "",
"group": "",
"cgroup-parent": "",
"default-ulimits": {},
"ipv6": false,
"iptables": false,
"ip-forward": false,
"ip-masq": false,
"userland-proxy": false,
"ip": "0.0.0.0",
"bridge": "",
"bip": "",
"fixed-cidr": "",
"fixed-cidr-v6": "",
"default-gateway": "",
"default-gateway-v6": "",
"icc": false,
"raw-logs": false,
"registry-mirrors": [],
"insecure-registries": [],
"disable-legacy-registry": false,
"default-runtime": "runc",
"oom-score-adjust": -500,
"runtimes": {
"runc": {
"path": "runc"
},
"custom": {
"path": "/usr/local/bin/my-runc-replacement",
"runtimeArgs": [
"--debug"
]
}
}
}
";}i:2;i:489;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1767;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1767;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:94:"Alle Einstellung in der deamon.json können auch mit dem Kommando dockerd konfiguriert werden.";}i:2;i:1769;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1863;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1863;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"Beispiel setzten einen alternativen Docker-Verzeichnis: ";}i:2;i:1865;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1921;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1921;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"deamon.json
";}i:2;i:1923;}i:23;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:29:"
{
"graph": "/data/docker"
}
";}i:2;i:3;i:3;s:30:">
{
"graph": "/data/docker"
}
";}i:2;i:1940;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"
dockerd
";}i:2;i:1977;}i:25;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:32:"
dockerd --graph="/data/docker"
";}i:2;i:3;i:3;s:33:">
dockerd --graph="/data/docker"
";}i:2;i:1991;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2031;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2031;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"Docker CLI-Subkommandos
";}i:2;i:2033;}i:29;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:682:"
history Zeige die History eines Images
images Liste Images
image [build history import
inspect load ls prune pull
push rm save tag] (ab 1.13) Neues Subkommando für die Image-
Verwaltung mit weiteren Subkommandos
import Inhalt eines Tarballs importieren, um ein
Image zu erzeugen
info Docker-Informationen
inspect Detaillierte Informationen zu einem Image
ps Liste Container-Instanzen
[image] prune (ab 1.13) Löschen von Dangling/Unused-
Images
pull Pulle ein Image aus einer Registry
rm Container removen
rmi Images removen
run Container mit einem Kommando ausführen
search Docker Registry nach Images durchsuchen
system [df events info prune] (ab 1.13) Neue System-spezifische
";}i:2;i:3;i:3;s:683:">
history Zeige die History eines Images
images Liste Images
image [build history import
inspect load ls prune pull
push rm save tag] (ab 1.13) Neues Subkommando für die Image-
Verwaltung mit weiteren Subkommandos
import Inhalt eines Tarballs importieren, um ein
Image zu erzeugen
info Docker-Informationen
inspect Detaillierte Informationen zu einem Image
ps Liste Container-Instanzen
[image] prune (ab 1.13) Löschen von Dangling/Unused-
Images
pull Pulle ein Image aus einer Registry
rm Container removen
rmi Images removen
run Container mit einem Kommando ausführen
search Docker Registry nach Images durchsuchen
system [df events info prune] (ab 1.13) Neue System-spezifische
";}i:2;i:2062;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2752;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2752;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"Docker INFO gibt alle wichtigen Informationen aus. Beispiel Befehl zum auslesen der Registry";}i:2;i:2754;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2846;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2846;}i:35;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:29:"
docker info|grep "registry"
";}i:2;i:3;i:3;s:30:">
docker info|grep "registry"
";}i:2;i:2853;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2890;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2890;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:78:"Für eine detailsuche zu nutzen kann mit search und Filter gearbeitet werden. ";}i:2;i:2892;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2970;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2970;}i:41;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:48:"
docker search ubuntu --filter=is-official=true
";}i:2;i:3;i:3;s:49:">
docker search ubuntu --filter=is-official=true
";}i:2;i:2977;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3033;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3033;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"Mit inspect können die Metadaten eines Images ausgelesen werden. ";}i:2;i:3035;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3101;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3101;}i:47;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:39:"
docker image inspect jonnybravo/mycow
";}i:2;i:3;i:3;s:40:">
docker image inspect jonnybravo/mycow
";}i:2;i:3108;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3155;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3155;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"Mit dem Commado prune werden die Image Leichen gelöscht ";}i:2;i:3158;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3215;}i:52;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3215;}i:53;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:20:"
docker image prune
";}i:2;i:3;i:3;s:21:">
docker image prune
";}i:2;i:3222;}i:54;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3250;}i:55;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3250;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"Dockerfile wichtige Kommands";}i:2;i:3252;}i:57;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3281;}i:58;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:3281;}i:59;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3281;}i:60;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3281;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:" from welches BasisImage";}i:2;i:3285;}i:62;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3309;}i:63;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3309;}i:64;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3309;}i:65;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3309;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:" MAINTAINER Autor ";}i:2;i:3313;}i:67;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3331;}i:68;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3331;}i:69;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3331;}i:70;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3331;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:74:" RUN im Read/Write Layer des Intermediate Container auszuführende Aktion ";}i:2;i:3335;}i:72;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3409;}i:73;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3409;}i:74;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3409;}i:75;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3409;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" ENV Umgebungsvaribale ";}i:2;i:3413;}i:77;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3436;}i:78;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3436;}i:79;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3436;}i:80;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3436;}i:81;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:" EXPOSE Portmapping";}i:2;i:3440;}i:82;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3459;}i:83;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3459;}i:84;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3459;}i:85;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3459;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:" ENTRYPOINT fixes Startkommando für primäre Applikation";}i:2;i:3463;}i:87;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3520;}i:88;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3520;}i:89;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3520;}i:90;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3520;}i:91;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:" CMD überschreibbares Startkommando für primäre Applikation";}i:2;i:3524;}i:92;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3586;}i:93;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3586;}i:94;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3586;}i:95;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3586;}i:96;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:" LABEL eindeutige Bezeichnung für spätere Selektion ";}i:2;i:3590;}i:97;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3644;}i:98;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3644;}i:99;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3644;}i:100;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3644;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:" ADD Files,Directory, remote URLs in Image kopieren ";}i:2;i:3648;}i:102;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3700;}i:103;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3700;}i:104;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3700;}i:105;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3700;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:" COPY Files in Image kopieren ";}i:2;i:3704;}i:107;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3734;}i:108;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3734;}i:109;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3734;}i:110;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3734;}i:111;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:" VOLUME persistentes Volumes für Image definieren ";}i:2;i:3738;}i:112;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3789;}i:113;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3789;}i:114;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3789;}i:115;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3789;}i:116;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:" USER User für die Kommandoausführung";}i:2;i:3793;}i:117;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3832;}i:118;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3832;}i:119;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3832;}i:120;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3832;}i:121;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" WORKDIR Setzt das Work Directory ";}i:2;i:3836;}i:122;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3870;}i:123;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3870;}i:124;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3870;}i:125;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3870;}i:126;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:" ARG Build Arguments";}i:2;i:3874;}i:127;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3894;}i:128;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3894;}i:129;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3894;}i:130;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3894;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:" ONBUILD Postbuild Trigger für spätere auf diesem Image basierende Builds";}i:2;i:3898;}i:132;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3973;}i:133;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3973;}i:134;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:3973;}i:135;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3973;}}