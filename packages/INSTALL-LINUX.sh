#!/bin/bash

if [ ! -d node-v11.15.0-linux-x64 ] ; then
    tar xvf node-v11.15.0-linux-x64.tar.xz
fi

if [ ! -d ../linux ] ; then
    echo "Making directory:"
    echo "  ../linux"
    mkdir ../linux
fi

#if [ ! -d ../linux/bin ] ; then
#    echo "Making directory:"
#    echo "  ../linux/bin"
#    mkdir ../linux/bin
#fi

echo "Copying:"
echo   "node-v11.15.0-linux-x64/{bin,include,lib,share} => ../linux"

/bin/cp -r node-v11.15.0-linux-x64/{bin,include,lib,share} ../linux/.

echo ""
echo "To prepare your command-line environment to run NodeJS v11.15.0:"
echo "  cd .."
echo "  source ./SETUP.bash"
echo ""
