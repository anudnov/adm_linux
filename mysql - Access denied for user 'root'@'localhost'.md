SQLSTATE[HY000] [1698] Access denied for user 'root'@'localhost'.md
```
sudo mysql -u root
```
###  #mysql>
```
USE mysql;
UPDATE user SET plugin='mysql_native_password' WHERE User='root';
FLUSH PRIVILEGES;
exit;
```

```
service mysql restart
```
