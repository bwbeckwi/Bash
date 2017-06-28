#!/bin/bash
#
# Author:	Brad Beckwith
# Purpose:	
# Date:		
# Revision:	
# Revision:     

usern='bwbeckwi'

echo 'Enter your password: '
read pw
clear

if [ -d /media/Movies ]; then
    echo 'Movies directory exists...'
    echo 'Connecting NAS Movies'
    mount -t cifs -o username=$usern,password=$pw //10.2.25.143/Multimedia/Movies /media/Movies
    echo Complteted...
else
    echo 'Music directory not connected, please check syntax.'
fi


if [ -d /media/home ]; then
    echo 'Home directory exists...'
    echo 'Connecting NAS home'
    mount -t cifs -o username=$usern,password=$pw //10.2.25.143/home /media/home
    echo Complteted...
else
    echo 'home directory not connected, please check syntax.'
fi


if [ -d /media/data ]; then
    echo 'Data directory exists...'
    echo 'Connecting NAS data'
    mount -t cifs -o username=$usern,password=$pw //10.2.25.143/data /media/data
    echo Complteted...
else
    echo 'data directory not connected, please check syntax.'
fi


if [ -d /media/mjbaz ]; then
    echo 'mjbaz directory exists...'
    echo 'Connecting NAS mjbaz'
    mount -t cifs -o username=$usern,password=$pw //10.2.25.143/mjbaz /media/mjbaz
    echo Complteted...
else
    echo 'mjbaz directory not connected, please check syntax.'
fi


if [ -d /media/linux ]; then
    echo 'linux directory exists...'
    echo 'Connecting NAS linux'
    mount -t cifs -o username=$usern,password=$pw //10.2.25.143/linux /media/linux
    echo Complteted...
else
    echo 'linux directory not connected, please check syntax.'
fi


if [ -d /media/music ]; then
    echo 'music directory exists...'
    echo 'Connecting NAS music'
    mount -t cifs -o username=$usern,password=$pw //10.2.25.143/multimedia/Music /media/music
    echo Complteted...
else
    echo 'music directory not connected, please check syntax.'
fi

if [ -d /media/multimedia ]; then
    echo 'multimedia directory exists...'
    echo 'Connecting NAS multimedia'
    mount -t cifs -o username=$usern,password=$pw //10.2.25.143/multimedia /media/multimedia
    echo Complteted...
else
    echo 'multimedia directory not connected, please check syntax.'
fi


## Extra Code
#    cp -R . sudo mount.cifs //192.168.3.101/Linux/MintBackup-LT /mnt/nas -o username=bwbeckwi
#
## End
