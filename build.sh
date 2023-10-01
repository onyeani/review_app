#!/bin/bash
# build.sh
# This script holds the commands for building
echo "Building app has just commenced."
docker build -t app_web:1.0 .
echo "Build complete..."