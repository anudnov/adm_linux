# CentOS 6
Stop firewall:
```
service iptables stop
```
Or 
```
systemctl stop firewalld
```
Disable firewall:
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
```
getenforce                #check status.
```
```
setenforce 0              #stop selinux temporary
```
```
vim /etc/selinux/config   #Change SELINUX=disabled
```
