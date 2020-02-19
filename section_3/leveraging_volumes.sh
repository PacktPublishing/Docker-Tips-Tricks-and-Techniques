# craete http server with volume. The ~/example-docs will be craeted on local file system
docker run -d --name bmweb -v ~/example-docs:/usr/local/apache2/htdocs -p 80:80  httpd:latest

# create read only (ro) volume
docker run --rm \
-v ~/example-docs:/testspace:ro \
alpine \
/bin/sh -c 'echo test > /testspace/test'

# verify that absent does not exists
ls ~/example-docs/absent

# craete abset dir in docker - it will be reflected on local volume
docker run --rm -v ~/example-docs/absent:/absent alpine:latest /bin/sh -c 'mount | grep absent'

# verify that directory does exists
ls ~/example-docs/absent