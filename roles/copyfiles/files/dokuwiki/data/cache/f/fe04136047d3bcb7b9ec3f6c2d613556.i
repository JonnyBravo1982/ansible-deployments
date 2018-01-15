a:14:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:140:"Es kann vorkommen das es beim ersten Start von UEFI Boot zu einem Partitonsfehler kommen kann. In der SMSTS.log steht dann folgender Fehler.";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:141;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:141;}i:5;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:143;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"failed to stage winpe code (0x8007000F)";}i:2;i:144;}i:7;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:183;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:184;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:184;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Lösung: ";}i:2;i:187;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:196;}i:12;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:439:"  Diskpart
  Select disk 0 (0 being the disk to setup)
  Clean (wipe the disk)
  Convert gpt (convert disk to GPT)
  Create partition efi size=200 (EFI system partition)
  Assign letter=s (Any allowable letter)
  Format quick fs=FAT32 (Format the ESP)
  Create partition msr size=128 (Create the MSR partition)
  Create partition primary (Create Windows partition)
  Assign letter=c
  Format quick fs=NTFS (Format primary partition)
  Exit";}i:2;i:196;}i:13;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:196;}}