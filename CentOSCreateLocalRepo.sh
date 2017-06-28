#! /bin/bash
echo "[DVD-RHEL6-Repository]" > /etc/yum.repos.d/dvdrhel.repo
echo "mediaid=1235481171.125642" >> /etc/yum.repos.d/dvdrhel.repo
echo "name=DVD-RHEL6 repository" >> /etc/yum.repos.d/dvdrhel.repo
echo "baseurl=file:////media/RHEL_6.2 x86_64 Disc 1/" >> /etc/yum.repos.d/dvdrhel.repo
echo "enabled=1" >> /etc/yum.repos.d/dvdrhel.repo
echo "gpgcheck=0" >> /etc/yum.repos.d/dvdrhel.repo

