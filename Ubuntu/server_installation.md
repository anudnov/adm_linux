#### 1. Hostname - Change Hostname Using hostnamectl
```
hostnamectl set-hostname "new-server-name-here"
hostnamectl
```
#### 2. Update and install optionality software:
```
apt-get update && apt-get upgrade -y
```
```
apt-get install -y cloud-initramfs-growroot
```
```
apt install mlocate htop iftop net-tools git curl
```
#### 3. Add user
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
#### 4. 
#### 5. 
#### 6. 
