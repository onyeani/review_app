#!/bin/bash
# test.sh
# Commands for testing
echo "Testing the app..."
echo 'Starting up a container from image just created'
docker run -d -p8091:80 --name webserver app_web:1.0
#echo 'Checking to see if webserver is up and running...'
#sh "curl be.ng:8091/reviews.html"
echo 'Shutting down and removing webserver'
docker stop webserver
docker rm webserver