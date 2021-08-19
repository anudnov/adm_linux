###########################################################################################################
###########################################################################################################
## Step 1 – Update & Install Required Dependencies

apt-get update -y
apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y

###########################################################################################################
## Step 2 – Install Docker and Docker Compose

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get install docker-ce docker-ce-cli containerd.io docker-compose -y
docker --version
docker-compose --version

###########################################################################################################
## Step 3 – Install Bitwarden

Download installation script, give the execution permission 
curl -Lso bitwarden.sh https://go.btwrdn.co/bw-sh
chmod +x bitwarden.sh

###########################################################################################################
## Step 4 - Start the Bitwarden installation

* Installation ID and Key
* https://bitwarden.com/host/

* Installation Id: b5f739cf-0f2d-4f51-aa4e-ad85009d36d9
* Installation Key: PeszUFZ5KmYwQcDBCRls

./bitwarden.sh install


./bitwarden.sh start

###########################################################################################################
## Chanes, updates.

nano /bwdata/env/global.override.env
./bitwarden.sh rebuild
./bitwarden.sh start
###########################################################################################################
