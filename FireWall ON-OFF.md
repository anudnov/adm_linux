# CentOS 6
```
service iptables stop
systemctl stop firewalld```
```
chkconfig iptables off
systemctl disable iptables```

# CentOS 7
```
systemctl disable firewalld
systemctl stop firewalld```


# SElinux
```
getenforce                #check status.
setenforce 0              #stop selinux temporary
vim /etc/selinux/config   #Change SELINUX=disabled ```