docker rm -f $(docker ps -qa);
docker-compose build;
docker-compose run gRPC_client;
