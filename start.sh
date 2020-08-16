
docker-compose -f create-certs.yml run --rm create_certs
docker-compose -f elastic-docker-tls.yml up -d
docker exec es01 /bin/bash -c "bin/elasticsearch-setup-passwords auto --batch --url https://es01:9200"

Changed password for user apm_system
PASSWORD apm_system = vKOH8jsqBWLb4WhPYQ2T

Changed password for user kibana_system
PASSWORD kibana_system = 4a6ZbTwTGRvVp6FWyEVi

Changed password for user kibana
PASSWORD kibana = 4a6ZbTwTGRvVp6FWyEVi

Changed password for user logstash_system
PASSWORD logstash_system = KZrBLZo9HboOh3Sl3W85

Changed password for user beats_system
PASSWORD beats_system = Scs1X3PJgSFZHt0b9BWX

Changed password for user remote_monitoring_user
PASSWORD remote_monitoring_user = qRsblmwnhQjQzB6oxFQi

Changed password for user elastic
PASSWORD elastic = DjjpuJ9fMGngdIwrmde1