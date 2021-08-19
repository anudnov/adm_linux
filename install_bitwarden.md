## Step 1 – Update & Install Required Dependencies

```apt-get update -y```

```apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y```

## Step 2 – Install Docker and Docker Compose
```curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -```

```add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"```
```apt-get install docker-ce docker-ce-cli containerd.io docker-compose -y```
```docker --version```
```docker-compose --version```

## Step 3 – Install Bitwarden
* Download installation script, give the execution permission 
```curl -Lso bitwarden.sh https://go.btwrdn.co/bw-sh```
```chmod +x bitwarden.sh```
## Step 4 - Start the Bitwarden installation

* Installation ID and Key
* https://bitwarden.com/host/

* Installation Id: b5f739cf-0f2d-4f51-aa4e-ad85009d36d9
* Installation Key: PeszUFZ5KmYwQcDBCRls
```./bitwarden.sh install```

```
 _     _ _                         _           
| |__ (_) |___      ____ _ _ __ __| | ___ _ __ 
| '_ \| | __\ \ /\ / / _` | '__/ _` |/ _ \ '_ \
| |_) | | |_ \ V  V / (_| | | | (_| |  __/ | | |
|_.__/|_|\__| \_/\_/ \__,_|_|  \__,_|\___|_| |_|
Open source password management solutions
Copyright 2015-2020, 8bit Solutions LLC
https://bitwarden.com, https://github.com/bitwarden
===================================================
Docker version 19.03.12, build 48a66213fe
docker-compose version 1.25.0, build unknown
(!) Enter the domain name for your Bitwarden instance (ex. bitwarden.example.com): my.domain.name
(!) Do you want to use Let's Encrypt to generate a free SSL certificate? (y/n): n
1.36.1: Pulling from bitwarden/setup
6ec8c9369e08: Pull complete
fe8522826504: Pull complete
658bf4619169: Pull complete
0392978bbc2e: Pull complete
33dd02257803: Pull complete
2a69859c8164: Pull complete
d68079cd71ee: Pull complete
7c08df4e94b0: Pull complete
653a8af878c4: Pull complete
d252f877c4a2: Pull complete
Digest: sha256:
Status: Downloaded newer image for bitwarden/setup:1.36.1
docker.io/bitwarden/setup:1.36.1
(!) Enter your installation id (get at https://bitwarden.com/host): XXXXXX-XXXX-XXXX-XXXX-XXXXXXX
(!) Enter your installation key: XXXXXXXXXXXXX
(!) Do you have a SSL certificate to use? (y/n): n
(!) Do you want to generate a self-signed SSL certificate? (y/n): n

Building nginx config.
Building docker environment files.
Building docker environment override files.
Building FIDO U2F app id.
Building docker-compose.yml.
Installation complete
If you need to make additional configuration changes, you can modify
the settings in `./bwdata/config.yml` and then run:
`./bitwarden.sh rebuild` or `./bitwarden.sh update`
Next steps, run:
`./bitwarden.sh start`
```

```./bitwarden.sh start```

## Chanes, updates.

* nano /bwdata/env/global.override.env
* ./bitwarden.sh rebuild
* ./bitwarden.sh start
* ./bitwarden.sh help
