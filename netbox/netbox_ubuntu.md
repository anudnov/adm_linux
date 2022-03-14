Update Ubuntu
```
sudo apt update -y
sudo apt upgrade -y
```

PostgreSQL Database Installation
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
