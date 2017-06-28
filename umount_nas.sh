#!/bin/bash
#
# Author:	Brad Beckwith
# Purpose:	
# Date:		
# Revision:	
# Revision:     

echo 'Enter your SUDO password: '
read pw
clear

if [ -d /media/Movies ]; then
    echo 'Un-Mounting drives'
    umount /media/*
    echo Complteted...
fi


