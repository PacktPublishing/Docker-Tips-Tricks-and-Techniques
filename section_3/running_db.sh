# specify mount point inside the container
docker run -d --volume /var/lib/cassandra/data --name cass-shared alpine echo Data Container

# use cass-shared volume definition
docker run -d --volumes-from cass-shared --name cass1 cassandra:2.2

# connect to running db within docker container using cqlsh
docker run -it --link cass1:cass cassandra:2.2 cqlsh cass
# execute  select * from system.schema_keyspaces ; to see that it is working