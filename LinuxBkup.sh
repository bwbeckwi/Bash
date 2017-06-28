#!/bin/bash
#
# Author:	Brad Beckwith
# Purpose:	Backup home directory to HD
# Date:		November 19, 2016
# Revision:	1.0.0

OF=/media/linux/NUCBackup/bwbeckwi_linuxBkup_$(date +"%Y%m%d%H%M%S").cpio

if [ -d /media/bwbeckwi ]; then
    echo 'Backup directory exists...'
    echo 'Starting Linux Home Directory Backup'
    find /home/bwbeckwi/ -print | cpio -ov > "$OF"
    echo Complteted...
else
    echo 'Drive not connected, please connect the drive.'
fi

