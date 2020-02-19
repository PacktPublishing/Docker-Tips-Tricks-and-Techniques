# copy image content into the volume
docker stop c1
docker rm c1

docker run --name c1 \
 -v /config \
alpine:latest /bin/sh -c 'cp /usr/* /config/'

# list all things in the volume
docker run --rm --volumes-from c1 alpine:latest ls /config