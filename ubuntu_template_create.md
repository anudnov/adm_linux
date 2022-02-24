```
sudo su
service rsyslog stop
apt-get update && apt-get upgrade -y
```
```
rm -rf /tmp/*
rm -rf /var/tmp/*
cat /dev/null > /etc/hostname
```
```
update-initramfs -u -k all && update-grub2
apt-get clean
```
```
apt -y purge cloud-init
apt -y purge cloud-*
rm -rf /etc/cloud
rm -rf /var/lib/cloud
apt -y install cloud-init
```

_apt-get install -y cloud-initramfs-growroot_

_apt install cloud-initramfs-growroot_

_lsblk_

_echo "1" > /sys/class/block/sda/device/rescan_

_growpart /dev/sda 3 #cfdisk_

_lsblk_

lvextend -l +100%FREE /dev/mapper/ubuntu--vg-ubuntu--lv
resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv

		sudo lvresize -l +100%FREE /dev/mapper/NAME
		sudo lvextend -l +100%FREE /dev/mapper/NAME
		sudo resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv

rm -f /root/.bash_history
unset HISTFILE
userdel -r ubuntu
passwd --delete root

# rm -rf /etc/netplan/*
# 

poweroff
history -w && history -c && exit
shutdown -h now
