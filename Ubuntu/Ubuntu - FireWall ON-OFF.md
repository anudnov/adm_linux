```
ufw status verbose
```
### Allowing Incoming Connections with UFW
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
### Denying Incoming Connections with UFW
```ufw deny smtp
ufw deny 389/tcp
ufw deny 137/udp
ufw deny 8000:8200/tcp
ufw deny from 192.168.0.150
ufw deny from 192.168.0.150 to any port 8000:8200/tcp
```
#### Listing UFW Rules
```
ufw show added
```
### Deleting UFW Rules
```
ufw delete allow mysql
ufw delete allow 443/tcp
ufw delete allow 21/udp
ufw delete allow 21/udp
```
Deleting Rules By Rule Number
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

https://webdock.io/en/docs/how-guides/security-guides/how-work-your-firewall-ufw-uncomplicated-firewall#:~:text=The%20UFW%20firewall%20is%20pre,%2C%20443%20and%2050000%2D50099.&text=As%20you%20can%20see%2C%20UFW,services%20from%20the%20outside%20network.
