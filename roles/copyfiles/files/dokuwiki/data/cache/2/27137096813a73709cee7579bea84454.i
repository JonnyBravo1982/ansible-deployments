a:18:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"Python GUI";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"Mit Python3 können GUI´s mit tkinter erstellt werden. ";}i:2;i:26;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:82;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:82;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Ihr ein Beispiel für eine einfache ";}i:2;i:84;}i:8;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"GUI";}i:2;i:120;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" : ";}i:2;i:123;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:127;}i:11;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:877:" #!/usr/bin/python3
 from tkinter import *
 fields = 'Filmname', 'Genre'
 def fetch(entries):
    for entry in entries:
       field = entry[0]
       text  = entry[1].get()
       print(field, text)
    def makeform(root, fields):
 entries = []
 for field in fields:
    row = Frame(root)
    lab = Label(row, width=15, text=field, anchor='w')
    ent = Entry(row)
    row.pack(side=TOP, fill=X, padx=5, pady=5)
    lab.pack(side=LEFT)
    ent.pack(side=RIGHT, expand=YES, fill=X)
    entries.append((field, ent))
 return entries
 if __name__ == '__main__':
 root = Tk()
 ents = makeform(root, fields)
 root.bind('<Return>', (lambda event, e=ents: fetch(e)))   
 b1 = Button(root, text='Show',
        command=(lambda e=ents: fetch(e)))
 b1.pack(side=LEFT, padx=5, pady=5)
 b2 = Button(root, text='Quit', command=root.quit)
 b2.pack(side=LEFT, padx=5, pady=5)
 root.mainloop()";}i:2;i:127;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:127;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"Ausgabe : 
";}i:2;i:1065;}i:14;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:12:":ausgabe.png";i:1;s:0:"";i:2;N;i:3;s:3:"200";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:1076;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1097;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1101;}i:17;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1101;}}