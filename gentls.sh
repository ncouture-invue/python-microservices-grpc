#!/bin/bash
#

mkdir -vp certs
openssl req \
        -x509 \
        -nodes \
        -newkey rsa:4096 \
        -keyout certs/ca.key \
        -out certs/ca.pem \
        -subj /O=me

openssl req \
        -nodes \
        -newkey rsa:4096 \
        -keyout certs/server.key \
        -out certs/server.csr \
        -subj /CN=recommendations

openssl x509 \
        -req \
        -in certs/server.csr \
        -CA certs/ca.pem \
        -CAkey certs/ca.key \
        -set_serial 1 \
        -out certs/server.pem
