### Installing Docker from Official Repository
Step 1: Updating the Software Repository
```
sudo apt update && apt upgrade -y
```
### Step 2: Downloading Dependencies
```
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
```
### Step 3: Adding Docker’s GPG Key
```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```
### Step 4: Installing the Docker Repository
```
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"
```
### Step 5: Installing the Latest Docker
```
sudo apt update && sudo apt-get install docker-ce -y
```
```
docker --version
```
### Step 7: Enable Docker Service 
```
sudo systemctl start docker && sudo systemctl enable docker
```
```
sudo systemctl status docker
```
