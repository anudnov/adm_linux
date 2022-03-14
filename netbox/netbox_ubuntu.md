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
