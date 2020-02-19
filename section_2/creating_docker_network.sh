# created secure closed container  - this will bound to the 127.0.0.1 (note --net none)
docker run --rm --net none alpine:latest ip addr
# nothing outside of the container can connect to that interface
# no program that is running inside the container can reach outside netwrok for security purpose


docker run --rm --net none alpine:latest  ping -w 2 8.8.8.8
# it returns network unreachable
