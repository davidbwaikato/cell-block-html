#!/bin/bash

echo "****"
echo "Away to run NodeJS based EtherCalc web server in the background"
echo "Logging stdout and stderr output to:"
echo "  ETHERCALC-SERVER-OUTPUT.txt"
echo "****"

nohup ./RUN-ETHERCALC-SERVER.sh > ETHERCALC-SERVER-OUTPUT.txt 2>&1 &

echo ""
echo "To stop server locate 'redis-server' with 'ps auxww | grep node | grep cell-block-html'"
echo ""

