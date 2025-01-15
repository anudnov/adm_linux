How To Remove Docker Images, Containers, and Volumes

Purging All Unused or Dangling Images, Containers, Volumes, and Networks
docker system prune



Stop and remove all containers
docker ps -a

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

Removing Volumes:
docker volume ls
docker volume rm 

To delete all the images:
docker rmi -f $(docker images -aq)

Use this to delete everything:
docker system prune -a --volumes
