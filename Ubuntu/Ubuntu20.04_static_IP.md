sudo cat /etc/netplan/00-installer-config.yaml
This is the network config written by 'subiquity'
```
   network:
     ethernets:
       ens33:
         dhcp4: true
     version: 2
```
backup original file:
```
sudo cp -a /etc/netplan/00-installer-config.yaml{,.orig}
```

#### Edit network configuration:

````
sudo nano /etc/netplan/00-installer-config.yaml

         network:
           ethernets:
             ens33:
               addresses: [192.168.1.100/24]
               gateway4: 192.168.1.1
               nameservers:
                 addresses: [192.168.1.1, 8.8.8.8]
           version: 2
```
#### Test configuration:
```
sudo netplan try
```

### Apply configuration:
```
sudo netplan apply
```

# END
