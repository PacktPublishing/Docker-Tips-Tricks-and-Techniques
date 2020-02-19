# we are using jenkins docker https://github.com/jenkinsci/docker/blob/master/README.md

# create jenkins docker container and expose on port 8080
docker run -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts

# open jenkins in browser (use admin password printed during installation)
open http://localhost:8080

