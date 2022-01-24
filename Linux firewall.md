### To check the status of your firewall and all rules, enter:
```
iptables -L -n
```
```
sudo iptables -L -n
````

### Check if IP is blocked:
```
iptables -L -n | grep X.X.X.X
```
### To unblock the IP Address:
```
iptables -I INPUT -s [IP Address] -j ACCEPT
```
### To block back an IP Address:
```
iptables -A INPUT -d [IP Address] -j DROP
```
```
service iptables save
```

############################################################################
#### To nstall firewalld:
```
yum install -y firewalld
systemctl enable firewalld
systemctl restart firewalld
```
####
```
firewall-cmd --list-all-zones
firewall-cmd --get-default-zone
firewall-cmd --list-services
```


#### To Enable all the incoming ports for a service:
```
firewall-cmd --zone=public --add-service=http
firewall-cmd --permanent --zone=public --add-service=http
```
```
firewall-cmd --add-port=2222/tcp
firewall-cmd --permanent --add-port=2222/tcp
```
```
systemctl restart firewalld && firewall-cmd –-list-ports
```

### Start and stop firewalld service:
```
systemctl start firewalld.service
```
```
systemctl stop firewalld.service
```
```
systemctl status firewalld.service
```
