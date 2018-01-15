#!/usr/bin/env bash
set -e -u -o pipefail

# remove info.php (prevents server info leak)
#rm /srv/http/info.php

# to mount SMB shares: 
pacman -S --noconfirm --noprogress --needed smbclient

# for video file previews
pacman -S --noconfirm --noprogress --needed ffmpeg

# for ssh mounts
pacman -S --noconfirm --noprogress --needed openssh

# for document previews
pacman -S --noconfirm --noprogress --needed libreoffice-fresh

# for image previews
pacman -S --noconfirm --noprogress --needed imagemagick ghostscript openexr openexr openexr libxml2 librsvg libpng libwebp

# not 100% sure what needs this:
pacman -S --noconfirm --noprogress --needed gamin wget

# owncloud itself
#su docker -c 'pacaur -m --noprogressbar --noedit --noconfirm owncloud-archive'
#pacman -U --noconfirm --needed /home/docker/.cache/pacaur/owncloud-archive/owncloud-archive-${OC_VERSION}-any.pkg.tar
wget https://download.owncloud.org/community/owncloud-${OC_VERSION}.tar.bz2
tar -xvf owncloud-${OC_VERSION}.tar.bz2
chown -R http:http owncloud
chmod -R 755 owncloud
mv -vn owncloud/* /srv/http/
chown -R http:http /srv/http/
chown -R http:http /owncloud
chmod -R 0777 /owncloud
# install some apps
#pacman -S --noconfirm --noprogress --needed owncloud-app-bookmarks owncloud-app-calendar owncloud-app-contacts owncloud-app-documents

# setup Apache for owncloud
#cp /etc/webapps/owncloud/apache.example.conf /etc/httpd/conf/extra/owncloud.conf
#sed -i 's,Alias /owncloud "/usr/share/webapps/owncloud",Alias /${TARGET_SUBDIR} "/usr/share/webapps/owncloud",g' /etc/httpd/conf/extra/owncloud.conf
#sed -i '$a Include conf/extra/owncloud.conf' /etc/httpd/conf/httpd.conf

# reduce docker layer size
#cleanuap-image
