# create first container with exposed network interface
docker run -d --name first --net none alpine:latest nc -l 127.0.0.1:3333

# create second container and join the container specified by the --net parameter
docker run -it --net container:first alpine:latest netstat –al
