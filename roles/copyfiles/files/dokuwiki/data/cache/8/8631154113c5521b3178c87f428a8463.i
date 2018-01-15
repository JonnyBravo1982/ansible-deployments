a:67:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"Wichtige Befehle : ";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:20;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:20;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Ad-hoc: ";}i:2;i:22;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:30;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:30;}i:8;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:28:"
ansible <hosts> -m <modul>
";}i:2;i:3;i:3;s:29:">
ansible <hosts> -m <modul>
";}i:2;i:37;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:73;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:73;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:22:"
ansible all -m ping 
";}i:2;i:3;i:3;s:23:">
ansible all -m ping 
";}i:2;i:80;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:110;}i:13;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:153:"
ansible all -b -m group -a "name_special state=present"

ansible all -b -m yum -a "name=mysqld state=latest"

ansible all -m stat -a path=/etc/profiles
";}i:2;i:3;i:3;s:154:">
ansible all -b -m group -a "name_special state=present"

ansible all -b -m yum -a "name=mysqld state=latest"

ansible all -m stat -a path=/etc/profiles
";}i:2;i:116;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:277;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:277;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Alle Server herrunterfahren 
";}i:2;i:279;}i:17;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:43:"
ansible all -a "/sbin/shutdown -h now" -b
";}i:2;i:3;i:3;s:44:">
ansible all -a "/sbin/shutdown -h now" -b
";}i:2;i:313;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:364;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:364;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"Ansible Facts können mit setup angezeigt werden 
";}i:2;i:366;}i:21;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:78:"
 ansible all -m setup
 ansible all -m setup -a 'filter=ansible_distribution'
";}i:2;i:3;i:3;s:79:">
 ansible all -m setup
 ansible all -m setup -a 'filter=ansible_distribution'
";}i:2;i:421;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:68:"
Die Facts können in den Playbooks  als varibale aufgerufen werden ";}i:2;i:507;}i:23;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:20:"ansible_distribution";i:1;N;i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:575;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:601;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:601;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"Playbook mit with (es werden zwei Pakete installiert  ";}i:2;i:603;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:657;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:657;}i:29;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:48:"
pip: name {{ item }}
with
  - httpd
  - andere
";}i:2;i:3;i:3;s:49:">
pip: name {{ item }}
with
  - httpd
  - andere
";}i:2;i:664;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:720;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:720;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"Cow deaktiveren /etc/ansible/ansible.cfg
";}i:2;i:722;}i:33;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:24:"
[defaults]
nocows = 1 
";}i:2;i:3;i:3;s:25:">
[defaults]
nocows = 1 
";}i:2;i:768;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:800;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:800;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Alle Task für ein Playbook können mit dem Kommando ";}i:2;i:802;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:855;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:855;}i:39;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:45:"
ansible-playbook --list-tasks playbook.yaml
";}i:2;i:3;i:3;s:46:">
ansible-playbook --list-tasks playbook.yaml
";}i:2;i:862;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:915;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:915;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:87:"Es können blocks ausgeführt werden und im Fehlerfall kann rescue ausgeführt werden. ";}i:2;i:918;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1005;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1005;}i:45;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:128:"
task:
  - block:
      - <es passiert was >
  - resuce:
      - <im Fehlerfall mach was>
  - always: 
      - <läuft immer>  
";}i:2;i:3;i:3;s:129:">
task:
  - block:
      - <es passiert was >
  - resuce:
      - <im Fehlerfall mach was>
  - always: 
      - <läuft immer>  
";}i:2;i:1012;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1148;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1148;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"Der Roles Pfad kann angepasst werden. ";}i:2;i:1150;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1188;}i:50;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1188;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"ansible.cfg
";}i:2;i:1190;}i:52;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:34:"
[defaults]
roles_path = /etc/...
";}i:2;i:3;i:3;s:35:">
[defaults]
roles_path = /etc/...
";}i:2;i:1207;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1249;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1249;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:90:"Bei den Rollen gibt es pre_tasks (bevor) und post_tasks (nach der Ausführung der rollen) ";}i:2;i:1251;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1341;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1341;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"Beispiel einer Verschlüsslung. ";}i:2;i:1343;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1375;}i:60;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1375;}i:61;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:35:"
ansible-vault create secrets.yaml
";}i:2;i:3;i:3;s:36:">
ansible-vault create secrets.yaml
";}i:2;i:1382;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"
Aufruf
";}i:2;i:1425;}i:63;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;N;i:2;s:0:"";i:3;s:88:"
ansible-playbook <play> --ask-vault_pass
ansible-playbook --vault-password-file <file>
";}i:2;i:3;i:3;s:89:">
ansible-playbook <play> --ask-vault_pass
ansible-playbook --vault-password-file <file>
";}i:2;i:1438;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1534;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1534;}i:66;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1534;}}