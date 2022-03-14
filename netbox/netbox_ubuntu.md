Start
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
