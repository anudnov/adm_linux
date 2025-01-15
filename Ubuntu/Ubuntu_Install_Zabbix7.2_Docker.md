##### Step 1: Install Docker and Docker Compose
````
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
````

##### Step 2: Create Docker Compose File
````
mkdir zabbix-docker && cd zabbix-docker
````
###### Create a docker-compose.yml file:
````
nano docker-compose.yml
````
````
version: '3.7'
services:
  zabbix-server:
    image: zabbix/zabbix-server-mysql:alpine-7.2-latest
    container_name: zabbix-server
    ports:
      - "10051:10051"
    environment:
      - DB_SERVER_HOST=mysql-server
      - MYSQL_DATABASE=zabbix
      - MYSQL_USER=zabbix
      - MYSQL_PASSWORD=zabbix_pwd
      - MYSQL_ROOT_PASSWORD=root_pwd
    networks:
      - zabbix-net
    depends_on:
      - mysql-server

  mysql-server:
    image: mysql:8.0
    container_name: mysql-server
    environment:
      - MYSQL_DATABASE=zabbix
      - MYSQL_USER=zabbix
      - MYSQL_PASSWORD=zabbix_pwd
      - MYSQL_ROOT_PASSWORD=root_pwd
    networks:
      - zabbix-net

  zabbix-web:
    image: zabbix/zabbix-web-nginx-mysql:alpine-7.2-latest
    container_name: zabbix-web
    ports:
      - "80:8080"
    environment:
      - ZBX_SERVER_HOST=zabbix-server
      - DB_SERVER_HOST=mysql-server
      - MYSQL_DATABASE=zabbix
      - MYSQL_USER=zabbix
      - MYSQL_PASSWORD=zabbix_pwd
      - MYSQL_ROOT_PASSWORD=root_pwd
    networks:
      - zabbix-net
    depends_on:
      - mysql-server
      - zabbix-server

  zabbix-agent:
    image: zabbix/zabbix-agent:alpine-7.2-latest
    container_name: zabbix-agent
    ports:
      - "10050:10050"
    environment:
      - ZBX_HOSTNAME=zabbix-agent
      - ZBX_SERVER_HOST=zabbix-server
    networks:
      - zabbix-net
    depends_on:
      - zabbix-server

networks:
  zabbix-net:
    driver: bridge
````

#####
docker-compose up -d
#####
#####
#####
#####
