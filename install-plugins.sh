#!/bin/bash

for i in es01; do
	#docker exec -it $i bin/elasticsearch-plugin install https://d3g5vo6xdbdb9a.cloudfront.net/downloads/elasticsearch-plugins/opendistro-security/opendistro_security-1.9.0.0.zip
	docker exec -it $i bin/elasticsearch-plugin install -b https://d3g5vo6xdbdb9a.cloudfront.net/downloads/elasticsearch-plugins/opendistro-job-scheduler/opendistro-job-scheduler-1.9.0.0.zip
	docker exec -it $i bin/elasticsearch-plugin install -b https://d3g5vo6xdbdb9a.cloudfront.net/downloads/elasticsearch-plugins/opendistro-sql/opendistro_sql-1.9.0.0.zip
	docker exec -it $i bin/elasticsearch-plugin install -b https://d3g5vo6xdbdb9a.cloudfront.net/downloads/elasticsearch-plugins/opendistro-alerting/opendistro_alerting-1.9.0.0.zip
done

for i in es01 es02 es03; do
	echo "Verificando container $i"
	docker exec -it $i bin/elasticsearch-plugin list
done

docker exec -it kib01 bin/kibana-plugin install https://d3g5vo6xdbdb9a.cloudfront.net/downloads/kibana-plugins/opendistro-security/opendistro_security_kibana_plugin-1.9.0.0.zip
docker exec -it kib01 bin/kibana-plugin install https://d3g5vo6xdbdb9a.cloudfront.net/downloads/kibana-plugins/opendistro-alerting/opendistro-alerting-1.9.0.0.zip
docker exec -it kib01 bin/kibana-plugin install https://d3g5vo6xdbdb9a.cloudfront.net/downloads/kibana-plugins/opendistro-index-management/opendistro_index_management_kibana-1.9.0.1.zip