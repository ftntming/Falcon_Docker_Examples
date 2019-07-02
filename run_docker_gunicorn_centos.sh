#!/bin/bash

docker run \
    --tty \
    --interactive \
    --network=backend-network \
    --publish 6000:6000 \
    --name backend_centos7 \
    docker_gunicorn_get_json_centos7
