docker build . -f recommendations/Dockerfile -t recommendations
docker build . -f marketplace/Dockerfile -t marketplace

docker network create microservices
