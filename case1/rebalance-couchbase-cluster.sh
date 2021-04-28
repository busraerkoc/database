./couchbase-cli \
rebalance \
--cluster=$(docker-machine ip swarm-master-$1):8091 \
--user Administrator \
--password password \
--server-add-username=Administrator \
--server-add-password=password