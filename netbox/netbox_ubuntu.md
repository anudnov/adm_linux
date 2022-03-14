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
sudo git clone -b master https://github.com/digitalocean/netbox.git
```

#### Finish copy
```
sudo tar -xzf v2.11.10.tar.gz -C /opt
sudo ln -s /opt/netbox-2.11.10/ /opt/netbox
ls -l /opt | grep netbox
```
_Outpu:_
```
lrwxrwxrwx 1 root root   20 Aug 10 03:23 netbox -> /opt/netbox-2.11.10/
drwxrwxr-x 7 root root 4096 Jul 28 19:56 netbox-2.11.10
```

#### Modify netbox user and media directory access
```
sudo usermod -aG sudo netbox
sudo chown --recursive netbox /opt/netbox/netbox/media/
```
####Configure Netbox
```
cd /opt/netbox/netbox/netbox/
sudo cp configuration.example.py configuration.py
```
#### Generate Key and copy it to a text file
```
python3 /opt/netbox/netbox/generate_secret_key.py
```
#### Update the Netbox configuration file
```
sudo nano /opt/netbox/netbox/netbox/configuration.py
```

#### Update the information below

```
ALLOWED_HOSTS = ['*']

DATABASE = {
    'NAME': 'netbox',         # Database name
    'USER': 'netbox',         # PostgreSQL username
    'PASSWORD': '**********', # PostgreSQL password update with your password
    'HOST': 'localhost',      # Database server
    'PORT': '',               # Database port (leave blank for default)
    'CONN_MAX_AGE': 300,      # Max database connection age
}

SECRET_KEY = 'COPY THE KEY GENERATED EARLIER'
```

#### Run the Upgrade script
_The upgrade can take up to 10 minutes to complete_
```
sudo /opt/netbox/upgrade.sh
```
#### Create Python virtual environment
```
source /opt/netbox/venv/bin/activate
```
#### Create superuser
```
cd /opt/netbox/netbox
python3 manage.py createsuperuser
```
#### Test the application
```
python3 manage.py runserver 192.168.x.x:8000 --insecure
```
#### Configure gunicorn
```
sudo cp /opt/netbox/contrib/gunicorn.py /opt/netbox/gunicorn.py
```
#### systemd Setup
```
sudo cp -v /opt/netbox/contrib/*.service /etc/systemd/system/
```
## (venv) netbox@netbox:
```
sudo systemctl daemon-reload
```
```
sudo systemctl start netbox netbox-rq
```
```
sudo systemctl enable netbox netbox-rq
```
```
systemctl status netbox.service
```

#### Create Self Signed Certificate
```
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/ssl/private/netbox.key \
-out /etc/ssl/certs/netbox.crt
```
#### Install nginx webserver
```
sudo apt install -y nginx
```


