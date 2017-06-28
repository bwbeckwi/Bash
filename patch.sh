!#/bin/bash
# Written by: Brad Beckwith @ home

apt-get update
apt-get upgrade -y
#apt-get dist-upgrade -y
echo "Patched system on $(date)" >> /home/bwbeckwi/Documents/PatchedSystem.log
