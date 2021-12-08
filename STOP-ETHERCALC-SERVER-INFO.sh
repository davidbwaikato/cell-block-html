#!/bin/bash

echo "****"
echo "PS info:"
ps auxww | grep node | grep cell-block
echo "****"

echo ""
echo "Guestimate at command to stop Cell-Block-HTML/Ethercalc NodeJS server:"
pid=`ps auxww | grep node | grep cell-block | awk '{print $2}'`
echo "  kill $pid"
echo ""

