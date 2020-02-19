# create container with a --name flag
docker run -d -P --name web training/webapp python app.py

# see the container and its name
docker ps -l

# create db container
docker run -d --name db training/postgres

# remove old web container 
docker container rm -f web

# create web container that links to db container
docker run -d -P --name web --link db:db training/webapp python app.py 

# inspect links between two containers
docker inspect -f "{{ .HostConfig.Links }}" web

# execute print env for web 
docker run --rm --name web2 --link db:db training/webapp env
# see that it has coordinates (IPs) to db created as env variables - you can use them for service discovery