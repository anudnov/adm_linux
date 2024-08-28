#### 1. Update and install:
```
sudo apt update
sudo apt install apache2
sudo systemctl status apache2
```
Apache service information:
```
sudo systemctl stop apache2
sudo systemctl start apache2
```
```
sudo systemctl restart apache2
sudo systemctl reload apache2
```
```
sudo systemctl disable apache2
sudo systemctl enable apache2
```
#### 2. Enable UFW:
```
sudo ufw status
sudo ufw app list
sudo ufw allow 'Apache'
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow from MY_IP to any port 22
sudo ufw allow from MY_IP to any port 22
sudo ufw show added
```
UFW, delete rules:
```
sudo ufw status numbered
sudo ufw delete 2
```
```
sudo ufw enable
```

#### 3. configure Apache with simple HTML web page
```
sudo mkdir /var/www/demo1.YOUR-SITE.com
sudo chown -R $USER:$USER /var/www/demo1.YOUR-SITE.com
sudo chmod -R 755 /var/www/demo1.YOUR-SITE.com
```
```
nano /var/www/site.YOUR-SITE.com/index.html
```
```
    <html>
        <head>
            <title>Welcome to Your_domain!</title>
        </head>
        <body>
            <h1>Success!  The your_domain virtual host is working!</h1>
        </body>
    </html>
```
```
sudo nano /etc/apache2/sites-available/demo1.YOUR-SITE.com.conf
```
```
    <VirtualHost *:80>
        ServerAdmin webmaster@localhost
        ServerName demo1.YOUR-SITE.com
        ServerAlias www.demo1.YOUR-SITE.com
        DocumentRoot /var/www/demo1.YOUR-SITE.com
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
    </VirtualHost>
```
```
sudo a2ensite demo1.YOUR-SITE.com.conf
sudo a2dissite 000-default.conf
sudo apache2ctl configtest
```
```
sudo systemctl restart apache2
```

