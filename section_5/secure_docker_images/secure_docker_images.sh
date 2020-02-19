# create image that uses env variable to store secure 
docker build -t secret:testenv .

# set secret 
docker run -d -e SECRET="this is a secret" secret:testenv sleep 300

# find the process that is running (get PID)
ps aux | grep sleep

# list all env variables of process (on linux)
cat /proc/PID/environ

# you will see all env variables 

# OR (get id of container)
docker ps 

# it will print the secret
docker exec c8deb18a8860 printenv

# DO NOT STORE SECRETS IN ENV VARIABLES! Store them in secret pass managers, encrypted