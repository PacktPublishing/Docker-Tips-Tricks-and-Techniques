# create first container with volume
docker run --name fowler -v ~/example-books:/library/PoEAA -v /library/DSL alpine:latest echo "Fowler collection created."

# create second container with volume
docker run --name knuth \
-v /library/TAoCP.vol1 \
-v /library/TAoCP.vol2 \
-v /library/TAoCP.vol3 \
-v /library/TAoCP.vol4.a \
alpine:latest \
echo "Knuth collection created"

# copy (share) volumes from fowler and knuth to reader container that has all those volumes
docker run --name reader \
--volumes-from fowler \
--volumes-from knuth \
alpine:latest ls -l /library/