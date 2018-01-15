a:32:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"Die wichtigsten Pythonmodule für einen hack ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:46;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:46;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:48;}i:6;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:66:" easy_install pyPdf python-nmap pygeoip mechanize beautifulSoup4  ";}i:2;i:3;i:3;s:72:" bash> easy_install pyPdf python-nmap pygeoip mechanize beautifulSoup4  ";}i:2;i:54;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"
Das Tool easy_install kann bei ubuntu über das Paket python-setuptools installiert werden.";}i:2;i:133;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:225;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:225;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"Wichtige Module : ";}i:2;i:227;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:246;}i:12;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:246;}i:13;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:246;}i:14;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:246;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:" python-nmap : nutzt nmap für einen Port Scan";}i:2;i:250;}i:16;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:296;}i:17;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:296;}i:18;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:296;}i:19;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:296;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" pexecpt : automatisierte Eingaben";}i:2;i:300;}i:21;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:334;}i:22;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:334;}i:23;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:334;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:334;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"Beispiel Skript: ";}i:2;i:336;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:353;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:353;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"einfacher Portscanner : 
";}i:2;i:355;}i:29;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:6:"python";i:2;s:0:"";i:3;s:850:"
import nmap
import optparse

def nmapScan(tgtHost, tgtPort):
    nmScan = nmap.PortScanner()
    nmScan.scan(tgtHost, tgtPort)
    state=nmScan[tgtHost]['tcp'][int(tgtPort)]['state']
    print("[*] " + tgtHost + " tcp/" + tgtPort + " " + state)
def main():
    parser = optparse.OptionParser('usage%prog ' + "-H <target host> -p <target port>")
    parser.add_option('-H', dest='tgtHost', type='string', help='target host')
    parser.add_option('-p', dest='tgtPort', type='string', help='specify target ports seperated by comma')
    (options, args) = parser.parse_args()
    tgtHost = options.tgtHost
    tgtPorts = str(options.tgtPort).split(',')
    if (tgtHost == None)|(tgtPorts[0] == None):
        print(parser.usage)
        exit(0)
    for tgtPort in tgtPorts:
        nmapScan(tgtHost, tgtPort)
if __name__ == '__main__':
    main()
    
";}i:2;i:3;i:3;s:858:" python>
import nmap
import optparse

def nmapScan(tgtHost, tgtPort):
    nmScan = nmap.PortScanner()
    nmScan.scan(tgtHost, tgtPort)
    state=nmScan[tgtHost]['tcp'][int(tgtPort)]['state']
    print("[*] " + tgtHost + " tcp/" + tgtPort + " " + state)
def main():
    parser = optparse.OptionParser('usage%prog ' + "-H <target host> -p <target port>")
    parser.add_option('-H', dest='tgtHost', type='string', help='target host')
    parser.add_option('-p', dest='tgtPort', type='string', help='specify target ports seperated by comma')
    (options, args) = parser.parse_args()
    tgtHost = options.tgtHost
    tgtPorts = str(options.tgtPort).split(',')
    if (tgtHost == None)|(tgtPorts[0] == None):
        print(parser.usage)
        exit(0)
    for tgtPort in tgtPorts:
        nmapScan(tgtHost, tgtPort)
if __name__ == '__main__':
    main()
    
";}i:2;i:385;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1250;}i:31;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1250;}}