#!/bin/bash

echo "######################### alpine:5000 curl centos7:6000"
docker run --network=backend-network -it docker_gunicorn_get_json_alpine curl -s backend_centos7:6000/quote
echo

echo "######################### centos7:6000 curl alpine:5000"
docker run --network=backend-network -it docker_gunicorn_get_json_centos7 curl -s backend_alpine:5000/quote
echo

echo "######################### curl alpine on localhost:5000"
curl localhost:5000/quote
echo

echo "######################### curl centos7 on localhost:6000"
curl localhost:6000/quote
echo
