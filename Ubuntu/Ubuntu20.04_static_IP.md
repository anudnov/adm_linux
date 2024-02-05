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

```
sudo nano /etc/netplan/00-installer-config.yaml
```
```
network:
  ethernets:
    ens160:
      addresses: [10.10.10.10/24]
      gateway4: 10.10.10.254
      nameservers:
        addresses: [10.10.10.1]
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

END
