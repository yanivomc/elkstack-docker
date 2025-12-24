# set vm.max_map_count
sudo sysctl -w vm.max_map_count=262144
cd elasticsearch
docker compose up -d 

echo "Waiting for Elasticsearch to be ready..."

# Wait for Elasticsearch to start
until curl -s -o /dev/null -w "%{http_code}" http://localhost:9200; do
  echo "Elasticsearch is not ready yet..."
  sleep 5
done

echo " - Elasticsearch is up and running!"
echo " Access Elasticsearch at: http://remoteip:9200"
echo " Access Kibana at: http://remoteip:5601"