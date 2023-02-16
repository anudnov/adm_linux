Ubuntu - FireWall ON-OFF

```
sudo service ufw stop
```
```
sudo ufw disable
```
```
ufw status verbose
```

Allowing Incoming Connections with UFW
```
ufw allow 80/tcp
ufw allow 443/tcp
ufw allow 21/udp
ufw allow 6000:6500/tcp
```
```
ufw allow mysql
ufw allow https
```
```
ufw allow from 192.168.0.100
```
```
ufw allow from 192.168.2.0/24
```
```
ufw allow from 192.168.0.200 to any port 8088
```
Denying Incoming Connections with UFW
ufw deny smtp
ufw deny 389/tcp
ufw deny 137/udp
ufw deny 8000:8200/tcp
ufw deny from 192.168.0.150
ufw deny from 192.168.0.150 to any port 8000:8200/tcp

#### Listing UFW Rules
ufw show added

Deleting UFW Rules
```
ufw delete allow mysql
ufw delete allow 443/tcp
ufw delete allow 21/udp
```
#### ufw delete allow 21/udp
```
ufw status numbered
ufw delete 20
```
#### Disabling UFW Firewall
```
ufw disable
ufw enable
```
If you want to reset UFW firewall completely and remove all existing rules, you can use the following command:
```
ufw reset
```

