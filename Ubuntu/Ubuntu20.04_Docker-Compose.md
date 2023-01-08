```
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
```
```
sudo chmod +x /usr/local/bin/docker-compose
```
```
$ docker-compose --version
```
_docker-compose version 1.21.2, build 1719ceb_

#### Original link: 
https://docker-docs.netlify.app/compose/install/#install-compose

## Error:
_ERROR: Version in "./docker-compose.yml" is unsupported. You might be seeing this error because you're using the wrong Compose file version. Either specify a supported version (e.g "2.2" or "3.3") and place your service definitions under theserviceskey, or omit theversionkey and place your service definitions at the root of the file to use version 1. For more on the Compose file format versions, see https://docs.docker.com/compose/compose-file/_
```
$ sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
$ which docker-compose
/usr/local/bin/docker-compose
$ docker-compose -v
docker-compose version 1.27.4, build 40524192
```
https://github.com/datahub-project/datahub/issues/2020
