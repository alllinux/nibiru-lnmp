#!/bin/bash
openssl genrsa 1024 > server.key
chmod 400 server.key
openssl req -new -x509 -nodes -sha1 -days 365 -key server.key -out server.crt

mv server.* ./nginx/ca/

#openssl genrsa -des3 -out server.key 1024
#openssl req -new -key server.key -out server.csr
#openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt

