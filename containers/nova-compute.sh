docker run -d --net host --privileged \
  -v /var/lib/nova/instances:/var/lib/nova/instances \
  --env HOST_IP=192.168.0.12 \
  --env MYSQL_SERVER=host1 \
  --env NEUTRON_SERVER=host1 \
  --env CINDER_SERVER=host1 \
  --env NOVA_SERVER=host1 \
  --env VNC_PROXY=192.168.0.12 \
  --env GLANCE_SERVER=host1 \
  --env WEBUI_JOB_SERVER=host1 \
  --env COLLECTOR_SERVER=192.168.0.12 \
  --env ANALYTICS_API_SERVER=host1 \
  --env REDIS_SERVER=host1 \
  --env IFMAP_SERVER=host1 \
  --env CASSANDRA_SERVER=host1 \
  --env ZOOKEEPER_SERVER=host1 \
  --env RABBIT_SERVER=host1 \
  --env KEYSTONE_SERVER=host1 \
  --env MEMCACHED_SERVER=host1 \
  --env DISCOVERY_SERVER=host1 \
  --env CONFIG_API_SERVER=host1 \
  --env ANALYTICS_SERVER=host1 \
  --env ADMIN_USER=admin \
  --env ADMIN_TENANT=admin \
  --env ADMIN_TOKEN=contrail123 \
  --env ADMIN_PASSWORD=contrail123 \
  --name nova-compute1 nova-compute
