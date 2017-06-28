#!/bin/bash
#
# Author:	Brad Beckwith
# Purpose:	Backup home directory to external HD
# Date:		July 11, 2015
# Revision:	1.0.0

if [ -d /media/bwbeckwi/OneTB2.5-1/ ]; then
    echo 'External output directory exists...'
    cd ~
    tar cvf - . | ( cd /media/bwbeckwi/OneTB2.5-1/; tar xf -)
    echo Complteted...
else
    echo 'External drive not connected, please connect the drive.'
fi



