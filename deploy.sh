#!/bin/bash
# deploy.sh

echo 'deploying the app ..'
docker-compose -p review_app -f docker_compose.yaml up -d
echo 'Setting up db'
# Move files from host to db server
docker cp db_file.sql reviewapp_db_1:/
docker cp db_script.sh reviewapp_db_1:/
# Run script on db server to create db, user, table ...
docker exec reviewapp_db_1 ./db_script.sh
echo 'All set. Point your browser to be.ng:8090/reviews.html'