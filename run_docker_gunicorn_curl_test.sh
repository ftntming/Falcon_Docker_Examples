#!/bin/bash

docker run --network=backend-network -it docker_gunicorn_get_json_alpine curl -s backend_centos7:6000/quote

docker run --network=backend-network -it docker_gunicorn_get_json_centos7 curl -s backend_alpine:5000/quote
