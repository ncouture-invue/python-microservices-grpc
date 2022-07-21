docker run \
       --name marketplace \
       -p 127.0.0.1:5000:5000/tcp \
       marketplace

docker run \
       --name recommendations \
       --network microservices \
       -p 127.0.0.1:50051:50051/tcp \
       -e RECOMMENDATIONS_HOST=recommendations \
       recommendations
