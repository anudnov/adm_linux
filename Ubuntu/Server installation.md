#### Hostname - Change Hostname Using hostnamectl
```
hostnamectl set-hostname ""
```
```
hostnamectl
```
#### If use vmware:
```
sudo apt install open-vm-tools 
```
#### Time:
```
timedatectl
```
_List teme zone: timedatectl list-timezones_
```
sudo timedatectl set-timezone Asia/Jerusalem
```
_Manual: date -s 14:47:00_
#### Update and install optionality software:
```
apt-get update && apt-get upgrade -y
```
```
apt-get install -y nano cloud-initramfs-growroot mlocate htop iftop net-tools git curl
```

#### Add user
How to create a user account on Ubuntu Linux
```
sudo adduser  {user-name}
```
Add the user to the sudo group:
```
usermod -aG sudo {user-name}
```
ROOT - delete a user password
```
sudo passwd -dl root
```
To remove home directory and mail spool too, enter:
```
sudo userdel -r  {user-name}
```

#### 
#### 
