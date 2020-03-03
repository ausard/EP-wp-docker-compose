#/bin/sh
ids=$(docker ps -q)
for id in $ids
do
    docker stop $id && docker rm $id
done