### Create Bitwarden Local User & Directory
We recommend configuring your Linux server with a dedicated bitwarden service account, from which to install and run Bitwarden. Doing so will isolate your Bitwarden instance from other applications running on your server.

These steps are Bitwarden-recommended best practices, but are not required. For more information, see Docker's Post-installation steps for Linux documentation.

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
