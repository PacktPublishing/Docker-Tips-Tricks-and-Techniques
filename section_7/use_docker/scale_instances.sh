# list all instances
docker-compose ps db

# scale up number of web instances:
docker-compose scale db=5

# validate number of instances
docker-compose ps db

# scale down
docker-compoe scale db=1

# validate number of instances
docker-compose ps db