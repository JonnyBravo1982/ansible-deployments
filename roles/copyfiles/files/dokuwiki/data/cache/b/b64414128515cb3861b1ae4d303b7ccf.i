a:452:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"View Source
{toc}";}i:2;i:2;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:19;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:19;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"h1. Introduction";}i:2;i:21;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:37;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:37;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:205:"Here's an account of the method I used to install tinc on two hosts to establish a VPN between them. For the Windows side, these instructions are an extension of [the official windows install instructions|";}i:2;i:39;}i:9;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:50:"http://www.tinc-vpn.org/examples/windows-install/]";i:1;N;}i:2;i:244;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:". For the Linux side, these instructions are the general instructions contained in the [tinc manual|";}i:2;i:294;}i:11;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:48:"http://www.tinc-vpn.org/documentation/tinc.html]";i:1;N;}i:2;i:394;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:" applied specifically to an Ubuntu 10.10 system.";}i:2;i:442;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:490;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:490;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:134:"In this page I will use names for each computer (Hanford, Omaha) to keep clear which one I'm talking about. These names are arbitrary.";}i:2;i:492;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:626;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:626;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"h1. Setup";}i:2;i:628;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:637;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:637;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"* Client ";}i:2;i:639;}i:22;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:648;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"Hanford";}i:2;i:649;}i:24;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:656;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:657;}i:26;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:658;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:660;}i:28;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:2:"OS";}i:2;i:661;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" : Windows 7 Ultimate 64bit
";}i:2;i:663;}i:30;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:691;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:" Location : Home network behind DSL/Cable NAT
";}i:2;i:693;}i:32;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:739;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:" Private home network : 192.168.1.0/24
";}i:2;i:741;}i:34;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:780;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" Static Private IP : 192.168.1.50
";}i:2;i:782;}i:36;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:816;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" Dynamic Public IP : 76.187.12.29
";}i:2;i:818;}i:38;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:852;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:" Dynamic ";}i:2;i:854;}i:40;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"DNS";}i:2;i:863;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:" name : hanford.dyndns.org
";}i:2;i:866;}i:42;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:893;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:" Able to forward inbound ports? : Yes
";}i:2;i:895;}i:44;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:933;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:" Tinc VPN IP address : 172.20.20.100
* Client ";}i:2;i:935;}i:46;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:981;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"Omaha";}i:2;i:982;}i:48;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:987;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:988;}i:50;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:989;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:991;}i:52;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:2:"OS";}i:2;i:992;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:" : Ubuntu 10.10 Maverick Meerkat Linux
";}i:2;i:994;}i:54;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1033;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:" Location : Office network behind NAT
";}i:2;i:1035;}i:56;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1073;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:" Private office network : 10.0.3.0/22
";}i:2;i:1075;}i:58;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1113;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:" Dynamic Private IP : 10.0.3.33
";}i:2;i:1115;}i:60;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1147;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:" Static Public IP : 206.12.20.2
";}i:2;i:1149;}i:62;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1181;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:" Able to forward inbound ports? : No
";}i:2;i:1183;}i:64;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1220;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:" Tinc VPN IP address : 172.20.20.200
* Other settings
";}i:2;i:1222;}i:66;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1276;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:" Name of the tinc VPN : ";}i:2;i:1278;}i:68;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1302;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"vpn";}i:2;i:1303;}i:70;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1306;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1307;}i:72;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1308;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:" Name of the Windows virtual ethernet adapter : ";}i:2;i:1310;}i:74;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1358;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"tincVPN";}i:2;i:1359;}i:76;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1366;}i:77;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1367;}i:78;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1368;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:" Network we'll use for the VPN : 172.20.20.0/24";}i:2;i:1370;}i:80;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1417;}i:81;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1417;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"h1. Client Hanford";}i:2;i:1419;}i:83;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1437;}i:84;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1437;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"# Log into [";}i:2;i:1439;}i:86;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:23:"http://www.dyndns.com/]";i:1;N;}i:2;i:1451;}i:87;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:" and create an account
# Create a dyndns host name : ";}i:2;i:1474;}i:88;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1527;}i:89;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"hanford.dyndns.org";}i:2;i:1528;}i:90;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1546;}i:91;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:103:"
# Log into the web interface of your home router and configure port forwading. Here are [instructions|";}i:2;i:1547;}i:92;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:27:"http://portforward.com/]for";i:1;N;}i:2;i:1650;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:317:" most every router
# Port forward port 655 for UDP and TCP in to the IP address of Hanford : 192.168.1.50
# If your router supports dyndns.org names, configure your router with your dyndns account information and dns name : hanford.dyndns.org
#* If your router doesn't support dyndns, then install the [dyndns client|";}i:2;i:1677;}i:94;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:39:"http://www.dyndns.com/support/clients/]";i:1;N;}i:2;i:1994;}i:95;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:" on Hanford and configure it to run
#* at all times
# [Download tinc|";}i:2;i:2033;}i:96;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:34:"http://www.tinc-vpn.org/download/]";i:1;N;}i:2;i:2102;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:131:" for Windows
# Install tinc into a standard location : C:\Program Files (x86)\tinc\
#* I'm running 64bit windows so I selected the ";}i:2;i:2136;}i:98;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2267;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"TAP-Win64 Virtual Ethernet Adapter";}i:2;i:2268;}i:100;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2302;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:" and de-selected ";}i:2;i:2303;}i:102;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2320;}i:103;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"TAP-Win32 Virtual Ethernet Adapter";}i:2;i:2321;}i:104;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2355;}i:105;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"
# In Windows Click ";}i:2;i:2356;}i:106;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2376;}i:107;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"Start";}i:2;i:2377;}i:108;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:2382;}i:109;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2385;}i:110;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2386;}i:111;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2387;}i:112;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"All Programs";}i:2;i:2388;}i:113;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:2400;}i:114;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2403;}i:115;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:2404;}i:116;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2405;}i:117;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"Accessories";}i:2;i:2406;}i:118;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:2417;}i:119;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2420;}i:120;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"
# Right click ";}i:2;i:2421;}i:121;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2436;}i:122;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"Command Prompt";}i:2;i:2437;}i:123;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2451;}i:124;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:" and in the context menu choose ";}i:2;i:2452;}i:125;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2484;}i:126;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"Run as Administrator";}i:2;i:2485;}i:127;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2505;}i:128;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:312:"
#* This will allow us to work with the files in Program Files (x86) without being blocked by UAC
# In the Command Prompt winow run these commands. These are intended to be copied and pasted into the command window interactively. If you put these into a BAT file, a few changes would be required :
{noformat}
cd ";}i:2;i:2506;}i:129;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2818;}i:130;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"C:\Program Files (x86)\tinc";}i:2;i:2819;}i:131;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2846;}i:132;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"
mkdir vpn
REM We won't set ";}i:2;i:2847;}i:133;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2875;}i:134;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"ConnectTo";}i:2;i:2876;}i:135;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2885;}i:136;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:" since omaha is behind a NAT and we are unable to forward ports to it
echo ";}i:2;i:2886;}i:137;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2961;}i:138;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"Name = hanford";}i:2;i:2962;}i:139;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2976;}i:140;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:" > vpn\tinc.conf
echo ";}i:2;i:2977;}i:141;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2999;}i:142;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"# ConnectTo = omaha";}i:2;i:3000;}i:143;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:3019;}i:144;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:3020;}i:145;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:">>";}i:2;i:3021;}i:146;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:" vpn\tinc.conf
echo ";}i:2;i:3023;}i:147;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:3043;}i:148;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"Interface = tincVPN";}i:2;i:3044;}i:149;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:3063;}i:150;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:3064;}i:151;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:">>";}i:2;i:3065;}i:152;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:" vpn\tinc.conf
mkdir vpn\hosts
echo ";}i:2;i:3067;}i:153;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:3103;}i:154;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Subnet = 172.20.20.100/32";}i:2;i:3104;}i:155;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:3129;}i:156;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:" > vpn\hosts\hanford
echo ";}i:2;i:3130;}i:157;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:3156;}i:158;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"Address = hanford.dyndns.org";}i:2;i:3157;}i:159;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:3185;}i:160;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:3186;}i:161;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:">>";}i:2;i:3187;}i:162;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:273:" vpn\hosts\hanford
REM Next we generate keys for hanford with tincd. Accept the default file locations that tinc suggests (by hitting enter at each prompt)
tincd -n vpn -K
{noformat}
{panel}
{noformat}
C:\Program Files (x86)\tinc>tincd -n vpn -K
Generating 2048 bits keys:
";}i:2;i:3189;}i:163;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3462;}i:164;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3465;}i:165;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3468;}i:166;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3471;}i:167;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3474;}i:168;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3477;}i:169;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3480;}i:170;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3483;}i:171;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"+++ p
";}i:2;i:3486;}i:172;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3492;}i:173;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3495;}i:174;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3498;}i:175;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3501;}i:176;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3504;}i:177;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3507;}i:178;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3510;}i:179;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3513;}i:180;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3516;}i:181;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3519;}i:182;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3522;}i:183;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3525;}i:184;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3528;}i:185;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3531;}i:186;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3534;}i:187;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3537;}i:188;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3540;}i:189;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:3543;}i:190;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:447:"+++ q
Done.
Please enter a file to save private RSA key to [C:\Program Files (x86)\tinc/vpn/rsa_key.priv]:
Please enter a file to save public RSA key to [C:\Program Files (x86)\tinc/vpn/hosts/hanford]:
{noformat}
{panel}
{noformat}
SET hanfordIP=172.20.20.100
SET tincVPNSubnet=255.255.255.0
tap-win64\addtap.bat
REM Let's find out the name of the interface that addtap just created. Sorry this is so complicated, Windows scripting is weak
FOR /F ";}i:2;i:3546;}i:191;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:3993;}i:192;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"tokens=1 delims=:";}i:2;i:3994;}i:193;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4011;}i:194;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:" %A IN ('ipconfig /all ^| findstr /N ";}i:2;i:4012;}i:195;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4049;}i:196;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"TAP-Win";}i:2;i:4050;}i:197;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4057;}i:198;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"') DO SET linenum=%A
SET /A linenum = %linenum% - 3
FOR /F ";}i:2;i:4058;}i:199;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4117;}i:200;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"tokens=2*";}i:2;i:4118;}i:201;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4127;}i:202;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:" %A IN ('ipconfig /all ^| findstr /N ";}i:2;i:4128;}i:203;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4165;}i:204;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:".*";}i:2;i:4166;}i:205;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4168;}i:206;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:" ^| findstr /B ";}i:2;i:4169;}i:207;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4184;}i:208;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"%linenum%:";}i:2;i:4185;}i:209;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4195;}i:210;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:94:"') DO set interfaceName=%B
SET interfaceName=%interfaceName:~0,-1%
REM Now let's change it to ";}i:2;i:4196;}i:211;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4290;}i:212;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"tincVPN";}i:2;i:4291;}i:213;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4298;}i:214;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"
netsh interface set interface name=";}i:2;i:4299;}i:215;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4335;}i:216;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"%interfaceName%";}i:2;i:4336;}i:217;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4351;}i:218;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:" newname=";}i:2;i:4352;}i:219;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4361;}i:220;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"tincVPN";}i:2;i:4362;}i:221;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4369;}i:222;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"
netsh interface ip set address name=";}i:2;i:4370;}i:223;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4407;}i:224;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"tincVPN";}i:2;i:4408;}i:225;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4415;}i:226;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:151:" source=static address=%hanfordIP% mask=%tincVPNSubnet% gateway=none
{noformat}
# We'll come back to hanford after setting up omaha to finish the setup";}i:2;i:4416;}i:227;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4567;}i:228;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4567;}i:229;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"h1. Client Omaha";}i:2;i:4569;}i:230;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4585;}i:231;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4585;}i:232;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"# Install tinc on Ubuntu
## If you haven't enabled the ";}i:2;i:4587;}i:233;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4642;}i:234;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Universe";}i:2;i:4643;}i:235;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4651;}i:236;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:" repository for Ubuntu which contains ";}i:2;i:4652;}i:237;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:4690;}i:238;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"Community maintained open source software";}i:2;i:4691;}i:239;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:4732;}i:240;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:", [enable the Universe repository|";}i:2;i:4733;}i:241;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:96:"https://help.ubuntu.com/community/Repositories/Ubuntu#Adding%20Ubuntu%20Software%20Repositories]";i:1;N;}i:2;i:4767;}i:242;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:198:"
## Run this command
{noformat}
sudo apt-get install tinc
{noformat}
# Now run these commands to set everything up :
{noformat}
omaha=omaha
hanford=hanford
cd /etc/tinc
sudo mkdir -p vpn/hosts
echo ";}i:2;i:4863;}i:243;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:5061;}i:244;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"Name = $omaha";}i:2;i:5062;}i:245;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:5075;}i:246;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" | sudo tee -a vpn/tinc.conf
echo ";}i:2;i:5076;}i:247;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:5110;}i:248;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"ConnectTo = $hanford";}i:2;i:5111;}i:249;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:5131;}i:250;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" | sudo tee -a vpn/tinc.conf
echo ";}i:2;i:5132;}i:251;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:5166;}i:252;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"#Interface =";}i:2;i:5167;}i:253;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:5179;}i:254;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" | sudo tee -a vpn/tinc.conf
echo ";}i:2;i:5180;}i:255;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:5214;}i:256;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"#Mode = switch";}i:2;i:5215;}i:257;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:5229;}i:258;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:" | sudo tee -a vpn/tinc.conf
# Since we can't forward ports into omaha, the ";}i:2;i:5230;}i:259;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:5306;}i:260;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"Address";}i:2;i:5307;}i:261;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:5314;}i:262;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:" value below is probably unecessary
echo ";}i:2;i:5315;}i:263;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:5356;}i:264;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Subnet = 172.20.20.200/32";}i:2;i:5357;}i:265;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:5382;}i:266;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:" | sudo tee -a vpn/hosts/$omaha
echo ";}i:2;i:5383;}i:267;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:5420;}i:268;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"Address = 206.12.20.2";}i:2;i:5421;}i:269;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:5442;}i:270;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:286:" | sudo tee -a vpn/hosts/$omaha
# Next we generate keys for omaha with tincd. Accept the default file locations that tinc suggests (by hitting enter at each prompt)
sudo tincd -n vpn -K
{noformat}
{panel}
{noformat}
user@omaha:/etc/tinc$ sudo tincd -n vpn -K
Generating 2048 bits keys:
";}i:2;i:5443;}i:271;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:5729;}i:272;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:5732;}i:273;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:5735;}i:274;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:5738;}i:275;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:".+++ p
";}i:2;i:5741;}i:276;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:5748;}i:277;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:5751;}i:278;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:5754;}i:279;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:5757;}i:280;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:5760;}i:281;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:5763;}i:282;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:5766;}i:283;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:5769;}i:284;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:5772;}i:285;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:201:"..+++ q
Done.
Please enter a file to save private RSA key to [/etc/tinc/vpn/rsa_key.priv]:
Please enter a file to save public RSA key to [/etc/tinc/vpn/hosts/omaha]:
{noformat}
{panel}
{noformat}
echo ";}i:2;i:5775;}i:286;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:5976;}i:287;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"vpn";}i:2;i:5977;}i:288;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:5980;}i:289;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:282:" | sudo tee -a nets.boot
echo '#!/bin/sh' | sudo tee -a vpn/tinc-up vpn/tinc-down
echo 'ifconfig $INTERFACE 172.20.20.200 netmask 255.255.255.0' | sudo tee -a vpn/tinc-up
echo 'ifconfig $INTERFACE down' | sudo tee -a vpn/tinc-down
sudo chmod 755 vpn/tinc-up vpn/tinc-down
{noformat}";}i:2;i:5981;}i:290;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6263;}i:291;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6263;}i:292;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"h1. Share keys between clients";}i:2;i:6265;}i:293;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6295;}i:294;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6295;}i:295;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:553:"# At this point you want to share the host configurations containing the public keys you generated on each host with the other host. This will involve either copying files between the hosts, or copy and pasting the contents of the files between hosts. Since the goal of the whole exersise is to establish a VPN between two hosts, you may not have a simple means to copy these files between hosts. An alternative is to email the contents of each file to yourself so that you can copy and paste it.
# Copy the file /etc/tinc/vpn/hosts/omaha from omaha to ";}i:2;i:6297;}i:296;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:6850;}i:297;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"C:\Program Files (x86)\tinc\vpn\omaha";}i:2;i:6851;}i:298;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:6888;}i:299;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" on hanford
# Copy the file ";}i:2;i:6889;}i:300;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:6917;}i:301;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"C:\Program Files (x86\tinc\vpn\hanford";}i:2;i:6918;}i:302;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:6956;}i:303;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:" from hanford to /etc/tinc/vpn/hosts/hanford on omaha";}i:2;i:6957;}i:304;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7010;}i:305;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7010;}i:306;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"h1. Start services on each client";}i:2;i:7012;}i:307;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7045;}i:308;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7045;}i:309;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"h2. Start Services on Hanford";}i:2;i:7048;}i:310;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7077;}i:311;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7077;}i:312;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:368:"# Under Windows, tincd.exe will install itself as a service and start. This way it will always run in the background whenever the client boots. Run this command to install tinc as a service and start it
{noformat}
tincd -n vpn
{noformat}
{panel}
{noformat}
C:\Program Files (x86)\tinc>tincd -n vpn
tinc.vpn service installed
tinc.vpn service started
{noformat}
{panel}";}i:2;i:7079;}i:313;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7447;}i:314;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7447;}i:315;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"h2. Start Services on Omaha";}i:2;i:7449;}i:316;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7476;}i:317;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7476;}i:318;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:203:"# Under Linux, the tinc package has installed an init script and enabled it in the various rc.d directories. You can confirm that it's set to start on boot by running this :
{noformat}
sudo sysv-rc-conf ";}i:2;i:7478;}i:319;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:7681;}i:320;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:95:"list tinc
{noformat}
# To start the service run :
{noformat}
sudo service tinc start
{noformat}";}i:2;i:7683;}i:321;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7778;}i:322;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7778;}i:323;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:74:"h1. What if we want to run Centos on the home machine instead of Windows 7";}i:2;i:7780;}i:324;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7854;}i:325;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7854;}i:326;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"* Client ";}i:2;i:7856;}i:327;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:7865;}i:328;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"Salem";}i:2;i:7866;}i:329;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:7871;}i:330;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:7872;}i:331;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:7873;}i:332;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:7875;}i:333;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:2:"OS";}i:2;i:7876;}i:334;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:" : Centos 5.6
";}i:2;i:7878;}i:335;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:7892;}i:336;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:" Location : Home network behind DSL/Cable NAT
";}i:2;i:7894;}i:337;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:7940;}i:338;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:" Private home network : 192.168.1.0/24
";}i:2;i:7942;}i:339;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:7981;}i:340;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" Static Private IP : 192.168.1.60
";}i:2;i:7983;}i:341;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:8017;}i:342;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" Dynamic Public IP : 76.187.12.29
";}i:2;i:8019;}i:343;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:8053;}i:344;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:" Dynamic ";}i:2;i:8055;}i:345;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"DNS";}i:2;i:8064;}i:346;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:" name : salem.dyndns.org
";}i:2;i:8067;}i:347;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:8092;}i:348;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:" Able to forward inbound ports? : Yes
";}i:2;i:8094;}i:349;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:8132;}i:350;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:" Tinc VPN IP address : 172.20.20.150";}i:2;i:8134;}i:351;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8170;}i:352;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8170;}i:353;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"h2. Client Salem";}i:2;i:8172;}i:354;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8188;}i:355;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8188;}i:356;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"# Install tinc on Centos
## Install the [repoforge RPM repository|";}i:2;i:8190;}i:357;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:26:"http://repoforge.org/use/]";i:1;N;}i:2;i:8256;}i:358;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"
## Run this command
{noformat}
wget -O /tmp/rpmforge-release-0.5.2-2.el5.rf.`uname -i`.rpm ";}i:2;i:8282;}i:359;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:74:"http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.2-2.el5.rf";i:1;N;}i:2;i:8374;}i:360;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:284:".`uname -i`.rpm
sudo rpm -ivh /tmp/rpmforge-release-0.5.2-2.el5.rf.`uname -i`.rpm
{noformat}
## Install tinc itself
{noformat}
sudo yum -y install tinc
{noformat}
# Now run these commands to set everything up :
{noformat}
sudo mkdir -p /etc/tinc/vpn/hosts
cd /etc/tinc
# We won't set ";}i:2;i:8448;}i:361;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:8732;}i:362;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"ConnectTo";}i:2;i:8733;}i:363;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:8742;}i:364;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:" since omaha is behind a NAT and we are unable to forward ports to it
echo ";}i:2;i:8743;}i:365;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:8818;}i:366;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Name = salem";}i:2;i:8819;}i:367;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:8831;}i:368;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" | sudo tee -a vpn/tinc.conf
echo ";}i:2;i:8832;}i:369;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:8866;}i:370;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"#ConnectTo = omaha";}i:2;i:8867;}i:371;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:8885;}i:372;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" | sudo tee -a vpn/tinc.conf
echo ";}i:2;i:8886;}i:373;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:8920;}i:374;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"Interface = tincVPN";}i:2;i:8921;}i:375;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:8940;}i:376;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" | sudo tee -a vpn/tinc.conf
echo ";}i:2;i:8941;}i:377;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:8975;}i:378;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Subnet = 172.20.20.150/32";}i:2;i:8976;}i:379;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:9001;}i:380;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:" | sudo tee -a vpn/hosts/salem
echo ";}i:2;i:9002;}i:381;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:9038;}i:382;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"Address = salem.dyndns.org";}i:2;i:9039;}i:383;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:9065;}i:384;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:285:" | sudo tee -a vpn/hosts/salem
# Next we generate keys for salem with tincd. Accept the default file locations that tinc suggests (by hitting enter at each prompt)
sudo tincd -n vpn -K
{noformat}
{panel}
{noformat}
user@salem:/etc/tinc$ sudo tincd -n vpn -K
Generating 2048 bits keys:
";}i:2;i:9066;}i:385;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9351;}i:386;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9354;}i:387;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9357;}i:388;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9360;}i:389;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:".+++ p
";}i:2;i:9363;}i:390;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9370;}i:391;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9373;}i:392;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9376;}i:393;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9379;}i:394;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9382;}i:395;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9385;}i:396;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9388;}i:397;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9391;}i:398;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9394;}i:399;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:201:"..+++ q
Done.
Please enter a file to save private RSA key to [/etc/tinc/vpn/rsa_key.priv]:
Please enter a file to save public RSA key to [/etc/tinc/vpn/hosts/salem]:
{noformat}
{panel}
{noformat}
echo ";}i:2;i:9397;}i:400;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:9598;}i:401;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"vpn";}i:2;i:9599;}i:402;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:9602;}i:403;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:9603;}i:404;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:">>";}i:2;i:9604;}i:405;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:389:"nets.boot
echo '#!/bin/sh' | sudo tee -a vpn/tinc-up vpn/tinc-down
echo 'ifconfig $INTERFACE 172.20.20.150 netmask 255.255.255.0' | sudo tee -a vpn/tinc-up
echo 'ifconfig $INTERFACE down' | sudo tee -a vpn/tinc-down
sudo chmod 755 vpn/tinc-up vpn/tinc-down
{noformat}
# Now we find an init script and set it to match the rpmforge rpm format. The init script comes from [this redhat ticket|";}i:2;i:9606;}i:406;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:51:"https://bugzilla.redhat.com/show_bug.cgi?id=682909]";i:1;N;}i:2;i:9995;}i:407;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:" which is mirrored over on [pastebin|";}i:2;i:10046;}i:408;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:29:"http://pastebin.com/5SwH1WPU]";i:1;N;}i:2;i:10083;}i:409;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"
{noformat}
cd /tmp/
wget -O tinc.init ";}i:2;i:10112;}i:410;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:52:"https://bugzilla.redhat.com/attachment.cgi?id=483052";i:1;N;}i:2;i:10151;}i:411;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"
cat | patch -p0 ";}i:2;i:10203;}i:412;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"<<";}i:2;i:10220;}i:413;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"EOF";}i:2;i:10222;}i:414;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:10225;}i:415;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"---";}i:2;i:10226;}i:416;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:230:" tinc.init.orig 2011-08-18 17:02:44.000000000 -0700
+++ tinc.init 2011-08-18 17:02:59.000000000 -0700
@@ -43,12 +43,9 @@
#############################################################################
# configuration & sanity checks";}i:2;i:10229;}i:417;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10459;}i:418;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10459;}i:419;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:225:"-#TINCD=/usr/sbin/tincd
-TINCD=/usr/local/sbin/tincd
-#TCONF=/etc/tinc
-TCONF=/usr/local/etc/tinc
-#TPIDS=/var/run
-TPIDS=/usr/local/var/run
+TINCD=/usr/sbin/tincd
+TCONF=/etc/tinc
+TPIDS=/var/run
#DEBUG=-dddd
#DEBUG=
#DEBUG=";}i:2;i:10461;}i:420;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:10686;}i:421;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"debug=5
";}i:2;i:10688;}i:422;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"EOF";}i:2;i:10696;}i:423;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:87:"
sudo install -o root -g root -m 755 tinc.init /etc/init.d/tinc
rm tinc.init
{noformat}";}i:2;i:10699;}i:424;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10786;}i:425;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10786;}i:426;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"h2. Share keys between clients";}i:2;i:10788;}i:427;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10818;}i:428;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10818;}i:429;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:677:"# At this point you want to share the host configurations containing the public keys you generated on each host with the other host. This will involve either copying files between the hosts, or copy and pasting the contents of the files between hosts. Since the goal of the whole exersise is to establish a VPN between two hosts, you may not have a simple means to copy these files between hosts. An alternative is to email the contents of each file to yourself so that you can copy and past it.
# Copy the file /etc/tinc/vpn/hosts/salem from salem to /etc/tinc/vpn/hosts/salem on omaha
# Copy the file /etc/tinc/vpn/hosts/omaha from omaha to /etc/tinc/vpn/hosts/omaha on salem";}i:2;i:10820;}i:430;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11497;}i:431;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11497;}i:432;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"h2. Start services on each client";}i:2;i:11499;}i:433;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11532;}i:434;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11532;}i:435;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"h3. Start services on Salem";}i:2;i:11534;}i:436;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11561;}i:437;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11561;}i:438;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:148:"# Set tincd to start on boot
{noformat}
sudo chkconfig tinc on
{noformat}
# To start the service run :
{noformat}
sudo service tinc start
{noformat}";}i:2;i:11563;}i:439;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11711;}i:440;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11711;}i:441;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"h1. Troubleshooting";}i:2;i:11713;}i:442;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11732;}i:443;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11732;}i:444;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:168:"# The best way to troubleshoot tinc is to stop the services on both clients, then start them directly to see the output.
# On Hanford under Windows run :
{noformat}
cd ";}i:2;i:11734;}i:445;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:11902;}i:446;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"C:\Program Files (x86)\tinc";}i:2;i:11903;}i:447;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:11930;}i:448;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:140:"
net stop tinc.vpn
tincd -D -n vpn
{noformat}
# On Omaha under Linux run :
{noformat}
sudo service tinc stop
sudo tincd -D -n vpn
{noformat}";}i:2;i:11931;}i:449;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12072;}i:450;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:129:"  Powered by Atlassian Confluence 2.10.3, the Enterprise Wiki. Bug/feature request – Atlassian news – Contact administrators ";}i:2;i:12072;}i:451;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:12072;}}