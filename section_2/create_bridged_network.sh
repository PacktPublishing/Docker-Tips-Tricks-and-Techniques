# join the bidged network from the container
docker run --rm --net bridge alpine:latest ip addr
# note two interfaces: loopback and ethernet

# test connection from container to outside network
docker run --rm alpine:latest ping -w 2 8.8.8.8