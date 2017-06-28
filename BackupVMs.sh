#!/bin/bash
#
# Author:	Brad Beckwith
# Purpose:	Backup VirtualBox VMs
# Date:		December 03, 2016
# Revision:	1.0.0

BackupSource="/media/bwbeckwi/VirtualBox VMs"
BackupLocation="/media/data/VM_Machines/VirtualBox VMs"

if [ -d "$BackupSource" ]; then
  if [ -d "$BackupLocation" ]; then
    echo "Both directorys exist..."
    tar cvf - "$BackupSource" | ( cd "$BackupLocation" && tar xf -)
    echo Complteted...
  fi
else
    echo "One or more directory names are not valid..."
fi

