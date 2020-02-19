# crete ubuntu container
docker run -it --name image-dev ubuntu:latest /bin/bash

# install git within container
apt-get update
apt-get upgrade

# install git
apt-get -y install git

# commit new change to image-dev
docker commit -a "@tomekl007" -m "Added git" image-dev ubuntu-git 

# get git version
docker run --rm ubuntu-git git version

# see possible commands
docker run --name cmd-git --entrypoint git ubuntu-git

# new commit to the container
docker commit -m "Set CMD git" \
-a "@tomekl007" cmd-git ubuntu-git
docker rm -vf cmd-git

docker run --name cmd-git ubuntu-git version