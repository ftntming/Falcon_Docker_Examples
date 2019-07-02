#!/bin/bash

docker rm backend_alpine backend_centos7

docker build -t docker_gunicorn_get_json_alpine alpine --network=host
docker build -t docker_gunicorn_get_json_centos7 centos7 --network=host

docker network create backend-network
