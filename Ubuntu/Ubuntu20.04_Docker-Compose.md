### Run this command to download the current stable release of Docker Compose:

sudo curl -L "https://github.com/docker/compose/releases/download/v2.3.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```
sudo curl -L "https://github.com/docker/compose/releases/download/v2.3.4/docker-compose-linux-aarch64" -o /usr/local/bin/docker-compose
```
### Apply executable permissions to the binary:
```
sudo chmod +x /usr/local/bin/docker-compose
```
```
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
```
### Test the installation.
```
docker-compose --version
```

From:
https://docs.docker.com/compose/install/
