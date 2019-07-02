#!/bin/bash



docker run \
    --tty \
    --interactive \
    --network=backend-network \
    --publish 5000:5000 \
    --name backend_alpine \
    docker_gunicorn_get_json_alpine
