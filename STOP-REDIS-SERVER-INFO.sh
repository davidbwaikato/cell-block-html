#!/bin/bash

echo "****"
echo "PS info:"
ps auxww | grep redis | grep :6379
echo "****"

echo ""
echo "Guestimate at command to stop Redis server:"
pid=`ps auxww | grep redis | grep :6379 | awk '{print $2}'`
echo "  kill $pid"
echo ""

