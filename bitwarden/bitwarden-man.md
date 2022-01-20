# Install Docker
_Example Ubuntu20.04_
https://github.com/anudnov/adm_linux/blob/main/Ubuntu/Ubuntu20.04_Docker_install.md

# Install Docker-Compose_install
_Example Ubuntu20.04_
https://github.com/anudnov/adm_linux/blob/main/Ubuntu/Ubuntu20.04_Docker-Compose_install

# Create Bitwarden Local User & Directory 
(https://bitwarden.com/help/install-on-premise-linux/)

Create a bitwarden user:
```
sudo adduser bitwarden
```
Set password for bitwarden user (strong password):
```
sudo passwd bitwarden
```
Create a docker group (if it doesn’t already exist):
```
sudo groupadd docker
```
Add the bitwarden user to the docker group:
```
sudo usermod -aG docker bitwarden
```
Create a bitwarden directory:
```
sudo mkdir /opt/bitwarden
```
Set permissions for the /opt/bitwarden directory:
```
sudo chmod -R 700 /opt/bitwarden
```
Set the bitwarden user ownership of the /opt/bitwarden directory:
```
sudo chown -R bitwarden:bitwarden /opt/bitwarden
```
