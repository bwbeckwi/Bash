#!/bin/bash
#
# Author:	Brad Beckwith
# Purpose:	Backup home directory to external HD
# Date:		July 11, 2015
# Revision:	1.0.0
# Revision:     1.1.0 Added new output drive location.

if [ -d /home/backup ]; then
    echo 'Output directory exists...'
    echo 'Starting Copy'
    cd /home/bwbeckwi
#   tar cvf - . | ( cd /home/backup/ && tar xvf -)
#   tar cvf /home/backup/bwbeckwi_backup.tar .
    cp -R . sudo mount.cifs //192.168.3.101/Linux/MintBackup-LT /mnt/nas -o username=bwbeckwi
    echo Complteted...
else
    echo 'Drive not connected, please connect the drive.'
fi



