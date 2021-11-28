#!/bin/bash

version=11.15.0
platform=linux-x64

version_platform=-v$version-$platform

if [ ! -d node$version_platform ] ; then
    tar xvf node$version_platform.tar.xz
fi

if [ ! -d ../linux ] ; then
    echo "Making directory:"
    echo "  ../linux"
    mkdir ../linux
fi

echo ""
echo "Copying:"
echo "  node$version_platform/{bin,include,lib,share} => ../linux"

/bin/cp -rf node$version_platform/{bin,include,lib,share} ../linux/.

echo ""
echo "Cleaning up untarred files:"
echo "  node$version_platform"

/bin/rm -rf node$version_platform

echo ""
echo "To prepare your command-line environment to run NodeJS v$version:"
echo "  cd .."
echo "  source ./SETUP.bash"
echo ""
