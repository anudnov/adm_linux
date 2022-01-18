# CentOS 6
Stop the firewall:
```
service iptables stop
```
**Or**
```
systemctl stop firewalld
```
Disable the firewall:
```
chkconfig iptables off
```
```
systemctl disable iptables
```

# CentOS 7
```
systemctl disable firewalld
```
```
systemctl stop firewalld
```


# SElinux
Check status:
```
getenforce                
```
Temporary stop the selinux:
```
setenforce 0
```
Edit selinux config file, change _SELINUX_=disabled
```
vim /etc/selinux/config
```
