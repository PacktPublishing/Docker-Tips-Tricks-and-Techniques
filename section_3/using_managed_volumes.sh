# create volume
docker volume create my-vol

# see managed volume details
docker volume inspect my-vol

# start container with managed volume
docker run -d \
  --name devtest \
  --mount source=myvol2,target=/app \
  nginx:latest


# cleanup
docker container stop devtest
docker container rm devtest
docker volume rm my-vol