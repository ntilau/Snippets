wget -P /tmp/ https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install /tmp/google-chrome-stable_current_amd64.deb -y

sudo apt install ecryptfs-utils -y
useradd -m -g sudo -p t3st admin

#sudo pkill -u admin
#sudo deluser --remove-home admin
#sudo apt install smbclient cifs-utils -y
