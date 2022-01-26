How To Install phpIPAM on Ubuntu 20.04|18.04
https://computingforgeeks.com/install-and-configure-phpipam-on-ubuntu-debian-linux/


#### Step 1: Install MariaDB  Server. Start with the installation of MariaDB database server:
```sudo apt update
sudo apt install mariadb-server mariadb-client
```
Ensure mariadb service is started and set to start at boot:
```
sudo systemctl enable mariadb
sudo systemctl start mariadb
```
Secure database server by setting root password:
```
sudo mysql_secure_installation
```

Once the database installation and setup is complete, create a database for phpipam user:
```
$ sudo mysql -u root -p
```
```
CREATE DATABASE phpipam;
GRANT ALL ON phpipam.* TO phpipam@localhost IDENTIFIED BY 'ip@mUserP@ss';
FLUSH PRIVILEGES;
QUIT;
```

#### Step 2: Install PHP and required modules. 
Next phase is the installation of php and required modules. Run the following commands:
```
sudo apt update 
sudo apt -y install php php-{mysql,curl,gd,intl,pear,imap,memcache,pspell,tidy,xmlrpc,mbstring,gmp,json,xml,fpm}
```

####Step 3: Install phpIPAM on Ubuntu 20.04/18.04 Linux
We’ll download phpIPAM from Github. Install git first:
```
sudo apt -y install git
```
Clone phpIPAM code from github
```
sudo git clone --recursive https://github.com/phpipam/phpipam.git /var/www/html/phpipam
```
Change to clone directory.
```
cd /var/www/html/phpipam
```






