./couchbase-cli \
	xdcr-setup \
	--cluster=$(docker-machine ip swarm-master-$1):8091 \
	--user Administrator \
	--password password \
	--create \
	--xdcr-cluster-name=cluster$1 \
	--xdcr-hostname=$(docker-machine ip swarm-master-$2):8091 \
	--xdcr-username=Administrator \
	--xdcr-password=password \
	--xdcr-demand-encryption=0

./couchbase-cli \
	xdcr-replicate \
	--cluster $(docker-machine ip swarm-master-$1):8091 \
	--xdcr-cluster-name=cluster$1 \
	--user Administrator \
	--password password \
	--create \
	--xdcr-from-bucket=travel-sample \
	--xdcr-to-bucket=travel-sample