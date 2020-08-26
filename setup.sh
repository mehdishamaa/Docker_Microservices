#!/bin/bash

docker-compose up -d
docker exec -it $(docker ps -l --format "{{.ID}}") node seeds/seed.js
