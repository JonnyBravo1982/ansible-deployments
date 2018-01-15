a:12:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Drupal 7";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Drupal 7 Installationsskript ";}i:2;i:25;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:54;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:54;}i:7;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"code_code";i:1;a:4:{i:0;s:4:"code";i:1;s:4:"bash";i:2;s:0:"";i:3;s:6823:" 
  #!/bin/bash
  PaketInstall() {
  if dpkg -l $1 2> /dev/null
  then
      echo  $1" ist bereits Installiert" 
  else
      if apt-get install $1 -qq -y > /dev/null
      then 
              echo $1 "wurde erfolgreich Installiert"
      else
              echo $1 "konnte nicht installiert werden"
      fi 
 fi
 }
  # Generate a random password
  #  $1 = number of characters; defaults to 32
  #  $2 = include special characters; 1 = yes, 0 = no; defaults to 1
  function randpass() {
 [ "$2" == "0" ] && CHAR="[:alnum:]" || CHAR="[:graph:]"
   randomPassword=`cat /dev/urandom | tr -cd "$CHAR" | head -c ${1:-32}`
   echo    
  }
  #####Modify New sources from drupal###### 
  DownloadLink="http://ftp.drupal.org/files/projects/drupal-7.37.tar.gz"
  TranslateFileDE="http://ftp.drupal.org/files/translations/7.x/drupal/drupal-7.0-alpha2.de.po"
  #################################
 if [ $# != 1 ]
 then
      echo "Es muss ein Argument Eingeben werden "
      echo "-install --Installiert drupal 7 mit mysql " 
      echo "-new-instance --legt eine neue drupal Instance an ohne Pakete"
      exit
      else
      if [ $1 == "-install" ]
      then 
              echo "es werden alle benötigten Programme installiert php5 php5-gd php5-mysql apach2 mysql-server"
              PaketInstall php5
              PaketInstall php5-gd
              PaketInstall php5-mysql
              PaketInstall apache2 
                       if dpkg -l mysql-server 2> /dev/null
                           then 
                                 echo  "mysql-server ist bereits Installiert" 
                                 echo "Gib das MySQL Passwot ein : " 
                                 read -s password
                            else
                                   echo "Gib das MySQL Passwot ein : " 
                             read -s password 
                             echo "mysql mysql-server/root_password string $password" | debconf-set-selections
                             echo "mysql mysql-server/root_password_again string $password" | debconf-set-selections
                             DEBIAN_PRIORITY=critical apt-get -qq -y install mysql-server
                         fi   
              echo "Download Drupal 7.37"
              if wget $DownloadLink
              then
                      echo Drupal erfolgreich herruntergeladen !! 
              else
                      echo Drupal konnte nicht herruntergeladen werden prüfe deine Internetverbindung
              fi
              read -p "Wie heißt die neue Instance :" instance
              randpass 10 0 
              mysql -u root --password=$password --execute="create database if not exists $instance;"
              mysql -u root --password=$password --execute="create user '$instance'@'localhost' identified by '$randomPassword';"
              mysql -u root --password=$password --execute="grant usage on *.* to '$instance'@'localhost' identified by '$randomPassword';"
              mysql -u root --password=$password --execute="grant all privileges on $instance.* to '$instance'@'localhost';"
              mysql -u root --password=$password --execute="flush privileges;"
              if tar -xzf drupal-7.37.tar* -C /var/www/
              then 
                      mv /var/www/drupal-7.37 /var/www/$instance
                      rm drupal-7.37.tar*
                      chown -R www-data:www-data /var/www/$instance
                      if wget $TranslateFileDE
                      then 
                      #####noch ändern split dircetory
                      mv ./drupal-7.0-alpha2.de.po /var/www/$instance/profiles/standard/translations/drupal-7.0-alpha2.de.po
                      else
                           echo "prüfe Deine Verbindung zum i.net :)"             
                      fi
                      echo "bitte folgen sie den Anweisungen unter http://localhost/$instance"
                      echo "Datenbankname :$instance"
                      echo "Der Datenbank User lautet :$instance"
                      echo "Passwort :$randomPassword"
                else
                      echo "prüfe Deine Verbindung zum i.net :)"
                fi
      elif [ $1 == "-new-instance" ]
      then 
          echo "Gib das MySQL Passwot ein : " 
              read -s password 
              echo "mysql mysql-server/root_password string $password" | debconf-set-selections
              echo "mysql mysql-server/root_password_again string $password" | debconf-set-selections
              DEBIAN_PRIORITY=critical apt-get -qq -y install mysql-server
              echo "Download Drupal 7.37"
              if wget $DownloadLink
              then
                      echo Drupal erfolgreich herruntergeladen !! 
              else
                      echo Drupal konnte nicht herruntergeladen werden prüfe deine Internetverbindung
              fi
              read -p "Wie heißt die neue Instance :" instance
              randpass 10 0 
              mysql -u root --password=$password --execute="create database if not exists $instance;"
              mysql -u root --password=$password --execute="create user '$instance'@'localhost' identified by '$randomPassword';"
              mysql -u root --password=$password --execute="grant usage on *.* to '$instance'@'localhost' identified by '$randomPassword';"
              mysql -u root --password=$password --execute="grant all privileges on $instance.* to '$instance'@'localhost';"
              mysql -u root --password=$password --execute="flush privileges;"
              if tar -xzf drupal-7.37.tar* -C /var/www/ >> /dev/null
              then 
                      mv /var/www/drupal-7.37 /var/www/$instance
                      rm drupal-7.37.tar*
                      chown -R www-data:www-data /var/www/$instance
                      if wget $TranslateFileDE 
                      then 
                      #####noch ändern split dircetory
                      mv ./drupal-7.0-alpha2.de.po /var/www/$instance/profiles/standard/translations/drupal-7.0-alpha2.de.po
                      else
                           echo "prüfe Deine Verbindung zum i.net :)"             
                      fi
                      echo "bitte folgen sie den Anweisungen unter http://localhost/$instance"
                      echo "Datenbankname :$instance"
                      echo "Der Datenbank User lautet :$instance"
                      echo "Passwort :$randomPassword"
                else
                      echo "prüfe Deine Verbindung zum i.net :)"
                fi
      else 
              echo $1 "ist kein gültiges Argument"
              echo "-install --Installiert drupal 7 mit mysql " 
              echo "-new-instance --legt eine neue drupal Instance an ohne Pakete"
    fi
  fi

";}i:2;i:3;i:3;s:6829:" bash> 
  #!/bin/bash
  PaketInstall() {
  if dpkg -l $1 2> /dev/null
  then
      echo  $1" ist bereits Installiert" 
  else
      if apt-get install $1 -qq -y > /dev/null
      then 
              echo $1 "wurde erfolgreich Installiert"
      else
              echo $1 "konnte nicht installiert werden"
      fi 
 fi
 }
  # Generate a random password
  #  $1 = number of characters; defaults to 32
  #  $2 = include special characters; 1 = yes, 0 = no; defaults to 1
  function randpass() {
 [ "$2" == "0" ] && CHAR="[:alnum:]" || CHAR="[:graph:]"
   randomPassword=`cat /dev/urandom | tr -cd "$CHAR" | head -c ${1:-32}`
   echo    
  }
  #####Modify New sources from drupal###### 
  DownloadLink="http://ftp.drupal.org/files/projects/drupal-7.37.tar.gz"
  TranslateFileDE="http://ftp.drupal.org/files/translations/7.x/drupal/drupal-7.0-alpha2.de.po"
  #################################
 if [ $# != 1 ]
 then
      echo "Es muss ein Argument Eingeben werden "
      echo "-install --Installiert drupal 7 mit mysql " 
      echo "-new-instance --legt eine neue drupal Instance an ohne Pakete"
      exit
      else
      if [ $1 == "-install" ]
      then 
              echo "es werden alle benötigten Programme installiert php5 php5-gd php5-mysql apach2 mysql-server"
              PaketInstall php5
              PaketInstall php5-gd
              PaketInstall php5-mysql
              PaketInstall apache2 
                       if dpkg -l mysql-server 2> /dev/null
                           then 
                                 echo  "mysql-server ist bereits Installiert" 
                                 echo "Gib das MySQL Passwot ein : " 
                                 read -s password
                            else
                                   echo "Gib das MySQL Passwot ein : " 
                             read -s password 
                             echo "mysql mysql-server/root_password string $password" | debconf-set-selections
                             echo "mysql mysql-server/root_password_again string $password" | debconf-set-selections
                             DEBIAN_PRIORITY=critical apt-get -qq -y install mysql-server
                         fi   
              echo "Download Drupal 7.37"
              if wget $DownloadLink
              then
                      echo Drupal erfolgreich herruntergeladen !! 
              else
                      echo Drupal konnte nicht herruntergeladen werden prüfe deine Internetverbindung
              fi
              read -p "Wie heißt die neue Instance :" instance
              randpass 10 0 
              mysql -u root --password=$password --execute="create database if not exists $instance;"
              mysql -u root --password=$password --execute="create user '$instance'@'localhost' identified by '$randomPassword';"
              mysql -u root --password=$password --execute="grant usage on *.* to '$instance'@'localhost' identified by '$randomPassword';"
              mysql -u root --password=$password --execute="grant all privileges on $instance.* to '$instance'@'localhost';"
              mysql -u root --password=$password --execute="flush privileges;"
              if tar -xzf drupal-7.37.tar* -C /var/www/
              then 
                      mv /var/www/drupal-7.37 /var/www/$instance
                      rm drupal-7.37.tar*
                      chown -R www-data:www-data /var/www/$instance
                      if wget $TranslateFileDE
                      then 
                      #####noch ändern split dircetory
                      mv ./drupal-7.0-alpha2.de.po /var/www/$instance/profiles/standard/translations/drupal-7.0-alpha2.de.po
                      else
                           echo "prüfe Deine Verbindung zum i.net :)"             
                      fi
                      echo "bitte folgen sie den Anweisungen unter http://localhost/$instance"
                      echo "Datenbankname :$instance"
                      echo "Der Datenbank User lautet :$instance"
                      echo "Passwort :$randomPassword"
                else
                      echo "prüfe Deine Verbindung zum i.net :)"
                fi
      elif [ $1 == "-new-instance" ]
      then 
          echo "Gib das MySQL Passwot ein : " 
              read -s password 
              echo "mysql mysql-server/root_password string $password" | debconf-set-selections
              echo "mysql mysql-server/root_password_again string $password" | debconf-set-selections
              DEBIAN_PRIORITY=critical apt-get -qq -y install mysql-server
              echo "Download Drupal 7.37"
              if wget $DownloadLink
              then
                      echo Drupal erfolgreich herruntergeladen !! 
              else
                      echo Drupal konnte nicht herruntergeladen werden prüfe deine Internetverbindung
              fi
              read -p "Wie heißt die neue Instance :" instance
              randpass 10 0 
              mysql -u root --password=$password --execute="create database if not exists $instance;"
              mysql -u root --password=$password --execute="create user '$instance'@'localhost' identified by '$randomPassword';"
              mysql -u root --password=$password --execute="grant usage on *.* to '$instance'@'localhost' identified by '$randomPassword';"
              mysql -u root --password=$password --execute="grant all privileges on $instance.* to '$instance'@'localhost';"
              mysql -u root --password=$password --execute="flush privileges;"
              if tar -xzf drupal-7.37.tar* -C /var/www/ >> /dev/null
              then 
                      mv /var/www/drupal-7.37 /var/www/$instance
                      rm drupal-7.37.tar*
                      chown -R www-data:www-data /var/www/$instance
                      if wget $TranslateFileDE 
                      then 
                      #####noch ändern split dircetory
                      mv ./drupal-7.0-alpha2.de.po /var/www/$instance/profiles/standard/translations/drupal-7.0-alpha2.de.po
                      else
                           echo "prüfe Deine Verbindung zum i.net :)"             
                      fi
                      echo "bitte folgen sie den Anweisungen unter http://localhost/$instance"
                      echo "Datenbankname :$instance"
                      echo "Der Datenbank User lautet :$instance"
                      echo "Passwort :$randomPassword"
                else
                      echo "prüfe Deine Verbindung zum i.net :)"
                fi
      else 
              echo $1 "ist kein gültiges Argument"
              echo "-install --Installiert drupal 7 mit mysql " 
              echo "-new-instance --legt eine neue drupal Instance an ohne Pakete"
    fi
  fi

";}i:2;i:61;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:6897;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6897;}i:10;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6897;}i:11;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6897;}}