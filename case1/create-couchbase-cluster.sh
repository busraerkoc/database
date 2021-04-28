for node in 01 02
do
    ./couchbase-cli 
        server-add 
        --cluster=$(docker-machine ip swarm-master-$1):8091 
        --user Administrator 
        --password password 
        --server-add=$(docker-machine ip swarm-node-$1-$node) 
        --server-add-username=Administrator 
        --server-add-password=password
done
 
./couchbase-cli
 setting-cluster 
 --cluster=$(docker-machine ip swarm-master-$1):8091 
 --user Administrator 
 --password password 
 --cluster-name=cluster$1