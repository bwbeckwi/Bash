#!/bin/bash
#
# Author:	Brad Beckwith
# Purpose:	Backup home directory to external HD
# Updated:	December 03, 2016
# Revision:	1.0.1
# Purpose:	Added minutes and seconds to file name.
#
# Date:		November 19, 2016
# Revision:	1.0.0

if [ -d /media/home/HomeBkup/Backups ]; then
    echo 'Backup directory exists...'
    echo 'Starting backup of E-mail'
    cd /home/bwbeckwi
    #tar cf - /home/bwbeckwi/.thunderbird | ( cd /media/home/HomeBkup/ThunderBird/Hidden && tar xf -)
    tar czf /tmp/ThunderBirdBkup_$(date +"%Y%m%d%M%S").tgz /home/bwbeckwi/.thunderbird && mv -u /tmp/ThunderBirdBkup*.tgz /media/home/HomeBkup/ThunderBirdBkup
    echo Complteted...
    echo "Backup of E-mail created on $(date)" >> /home/bwbeckwi/Documents/E_mailBackup.log
else
    echo "Drive not connected, please connect the drive. $(date)" >> /home/bwbeckwi/Documents/E_mailBackup.log
fi

