#### Update Ubuntu
```
sudo apt update -y
sudo apt upgrade -y
```

#### PostgreSQL Database Installation
https://netbox.readthedocs.io/en/stable/installation/1-postgresql/
```
sudo apt update
sudo apt install -y postgresql
```
```
sudo systemctl start postgresql
sudo systemctl enable postgresql
```
```
psql -V
```

```
sudo -u postgres psql
psql (12.5 (Ubuntu 12.5-0ubuntu0.20.04.1))
Type "help" for help.
```
```
CREATE DATABASE netbox;
CREATE USER netbox WITH PASSWORD 'J5brHrAXFLQSif0K';
GRANT ALL PRIVILEGES ON DATABASE netbox TO netbox;
\q
```
_Verify PostgreSQL install_
```
psql --username netbox --password --host localhost netbox
```
_Output:_
```
$ psql --username netbox --password --host localhost netbox
Password for user netbox: 
psql (12.5 (Ubuntu 12.5-0ubuntu0.20.04.1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

netbox=> \conninfo
You are connected to database "netbox" as user "netbox" on host "localhost" (address "127.0.0.1") at port "5432".
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
netbox=> \q

```
#### Install REDIS
```
sudo apt install -y redis-server
```
_Output:_
```
$ redis-cli ping
PONG
```
Install additional packages
```
sudo apt install -y python3 python3-pip python3-venv python3-dev build-essential libxml2-dev libxslt1-dev libffi-dev libpq-dev libssl-dev zlib1g-dev
```
Upgrade Python PIP
```
sudo pip3 install --upgrade pip
```
_Output:_
```
netbox@netbox:~$ sudo pip3 install --upgrade pip
The directory '/home/netbox/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/netbox/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
Collecting pip
  Downloading https://files.pythonhosted.org/packages/ca/bf/4133a0e05eac641ec270bbcef30512b5ad307d7838adb994acd652cc30e3/pip-21.2.3-py3-none-any.whl (1.6MB)
    100% |████████████████████████████████| 1.6MB 1.1MB/s 
Installing collected packages: pip
  Found existing installation: pip 9.0.1
    Not uninstalling pip at /usr/lib/python3/dist-packages, outside environment /usr
Successfully installed pip-21.2.3
netbox@netbox:~$ 
```
#### Install Netbox
```
sudo wget https://github.com/netbox-community/netbox/archive/v2.11.10.tar.gz
```
_Outpu:_
```
--2021-08-10 03:23:12--  https://github.com/netbox-community/netbox/archive/v2.11.10.tar.gz
Resolving github.com (github.com)... 140.82.114.4
Connecting to github.com (github.com)|140.82.114.4|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://codeload.github.com/netbox-community/netbox/tar.gz/v2.11.10 [following]
--2021-08-10 03:23:13--  https://codeload.github.com/netbox-community/netbox/tar.gz/v2.11.10
Resolving codeload.github.com (codeload.github.com)... 140.82.114.9
Connecting to codeload.github.com (codeload.github.com)|140.82.114.9|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/x-gzip]
Saving to: ‘v2.11.10.tar.gz’

v2.11.10.tar.gz                           [    <=>                                                                ]   6.78M  8.84MB/s    in 0.8s    

2021-08-10 03:23:14 (8.84 MB/s) - ‘v2.11.10.tar.gz’ saved [7110691]
```
#### Finish copy
```
sudo tar -xzf v2.11.10.tar.gz -C /opt
sudo ln -s /opt/netbox-2.11.10/ /opt/netbox
ls -l /opt | grep netbox
```



