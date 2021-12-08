#!/bin/bash

echo "****"
echo "Away to run Redis Server in the background"
echo "Logging stdout and stderr output to:"
echo "  REDIS-SERVER-OUTPUT.txt"
echo "****"

nohup ./RUN-REDIS-SERVER.sh > REDIS-SERVER-OUTPUT.txt 2>&1 &

echo ""
echo "To stop server locate 'redis-server' with 'ps'"
echo ""

