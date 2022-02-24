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
```
unset HISTFILE
userdel -r ubuntu
passwd --delete root
```
```
poweroff
history -w && history -c && exit
shutdown -h now
```
