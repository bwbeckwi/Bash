!#/bin/bash
# Written by: Brad Beckwith
# Updated on: 9/28/2023 USA
echo "This is for Debian Linux types (i.e. Ubuntu, Pop-OS, etc.)

apt-get update
apt-get upgrade -y
#apt-get dist-upgrade -y
echo "Patched system on $(date)" >> /var/log/PatchedSystem.log
