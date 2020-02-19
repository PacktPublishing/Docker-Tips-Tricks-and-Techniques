# create env variable and pass to image
docker run --name image-with-env-var -e ENV_1=v1 -e ENV_2=v2 busybox:latest

# commit 
docker commit image-with-env-var rie

# output env variables
docker run --rm rie \
/bin/sh -c "echo \$ENV_1 \$ENV_2"
