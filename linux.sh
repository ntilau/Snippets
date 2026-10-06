wget -P /tmp/ https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install /tmp/google-chrome-stable_current_amd64.deb -y

timedatectl set-local-rtc 1 --adjust-system-clock

sudo apt install ecryptfs-utils -y
useradd -m -g sudo -p t3st admin

#sudo pkill -u admin
#sudo deluser --remove-home admin
#sudo apt install smbclient cifs-utils -y

sudo sed -i 's/\#GRUB_DISABLE_OS_PROBER=false/GRUB_DISABLE_OS_PROBER=true/' /etc/default/grub
sudo update-grub
