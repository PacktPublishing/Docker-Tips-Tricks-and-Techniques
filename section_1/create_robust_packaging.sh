# create first container
docker run --name version-a busybox:latest touch /HelloWorld 
docker diff version-a

# create 2nd container with modification
docker run --name version-d busybox:latest rm /bin/vi 
docker diff version-d

# create 3rd container with modification
docker run --name version-c busybox:latest touch /bin/vi 
docker diff version-c

# clean up
docker rm -vf version-a 
docker rm -vf version-d 
docker rm -vf version-c
