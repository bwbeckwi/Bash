

dpkg --get-selections | grep -v deinstall | awk -F"\t" '{print $1}' > ~/Documents/InstalledSoftware.txt


