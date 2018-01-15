a:33:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:152:"SoftEther ist eine Open Source Software die OpenVPN, IPsec, L2TP, MS-SSTP, L2TPv3 und EtherIP beherrscht und eignet sich perfekt für einen VPN Server. ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:153;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:153;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"Installation : 
Voraussetzungen installieren  
";}i:2;i:155;}i:6;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:36:"
apt-get install gcc gcc-multilib  
";}i:2;i:3;i:3;s:37:">
apt-get install gcc gcc-multilib  
";}i:2;i:207;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"
Software Downloaden ";}i:2;i:251;}i:8;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:59:"http://www.softether-download.com/en.aspx?product=softether";i:1;N;}i:2;i:272;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:331;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:331;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"Installation 
";}i:2;i:333;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:227:"
tar zxf softether-vpnserver-v1.00-9029-rc2-2013.03.16-linux-x64-64bit.tar.gz
cd vpnserver
make
cd ..
mv vpnserver /usr/local
cd /usr/local/vpnserver/
chmod 600 *
chmod 700 vpncmd
chmod 700 vpnserver
nano /etc/init.d/vpnserver
";}i:2;i:3;i:3;s:228:">
tar zxf softether-vpnserver-v1.00-9029-rc2-2013.03.16-linux-x64-64bit.tar.gz
cd vpnserver
make
cd ..
mv vpnserver /usr/local
cd /usr/local/vpnserver/
chmod 600 *
chmod 700 vpncmd
chmod 700 vpnserver
nano /etc/init.d/vpnserver
";}i:2;i:352;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:587;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:587;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"init Start erstellen ";}i:2;i:589;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:610;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:610;}i:18;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:595:"
#!/bin/sh
### BEGIN INIT INFO
# Provides:          vpnserver
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start daemon at boot time
# Description:       Enable Softether by daemon.
### END INIT INFO
DAEMON=/usr/local/vpnserver/vpnserver
LOCK=/var/lock/subsys/vpnserver
test -x $DAEMON || exit 0
case "$1" in
start)
$DAEMON start
touch $LOCK
;;
stop)
$DAEMON stop
rm $LOCK
;;
restart)
$DAEMON stop
sleep 3
$DAEMON start
;;
*)
echo "Usage: $0 {start|stop|restart}"
exit 1
esac
exit 0
";}i:2;i:3;i:3;s:596:">
#!/bin/sh
### BEGIN INIT INFO
# Provides:          vpnserver
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start daemon at boot time
# Description:       Enable Softether by daemon.
### END INIT INFO
DAEMON=/usr/local/vpnserver/vpnserver
LOCK=/var/lock/subsys/vpnserver
test -x $DAEMON || exit 0
case "$1" in
start)
$DAEMON start
touch $LOCK
;;
stop)
$DAEMON stop
rm $LOCK
;;
restart)
$DAEMON stop
sleep 3
$DAEMON start
;;
*)
echo "Usage: $0 {start|stop|restart}"
exit 1
esac
exit 0
";}i:2;i:617;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1220;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1220;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"Service aktivieren : 
";}i:2;i:1222;}i:22;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:140:"
chmod 755 /etc/init.d/vpnserver
mkdir /var/lock/subsys
update-rc.d vpnserver defaults
/etc/init.d/vpnserver start
cd /usr/local/vpnserver/
";}i:2;i:3;i:3;s:141:">
chmod 755 /etc/init.d/vpnserver
mkdir /var/lock/subsys
update-rc.d vpnserver defaults
/etc/init.d/vpnserver start
cd /usr/local/vpnserver/
";}i:2;i:1249;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1397;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1397;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Checken 
";}i:2;i:1399;}i:26;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:18:"
./vpncmd
3
check
";}i:2;i:3;i:3;s:19:">
./vpncmd
3
check
";}i:2;i:1413;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1439;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1439;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"Password setzen 
";}i:2;i:1441;}i:30;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:49:"
./vpncmd
1
ret
ret
VPN Server>ServerPasswordSet
";}i:2;i:3;i:3;s:50:">
./vpncmd
1
ret
ret
VPN Server>ServerPasswordSet
";}i:2;i:1463;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1520;}i:32;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1520;}}