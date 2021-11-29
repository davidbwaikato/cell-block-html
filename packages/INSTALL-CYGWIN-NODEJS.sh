#!/bin/bash

version=11.15.0
platform=win-x64

version_platform=-v$version-$platform

if [ ! -d node$version_platform ] ; then
    unzip node$version_platform.zip
fi

if [ ! -d ../windows ] ; then
    echo "Making directory:"
    echo "  ../windows"
    mkdir ../windows
    mkdir ../windows/bin
fi

echo ""
echo "Copying:"
echo "  node$version_platform/{node.exe,nodevars.bat,npm*,npx*} => ../windows/."

/bin/cp -rf node$version_platform/{node.exe,nodevars.bat,npm,npm.cmd,npx,npx.cmd} ../windows/bin/.
chmod a+x ../windows/bin/{node.exe,nodevars.bat,npm,npm.cmd,npx,npx.cmd}

echo "Copying:"
echo "  node$version_platform/node_modules => ../windows/."
/bin/cp -r node$version_platform/node_modules ../windows/.


echo ""
echo "Cleaning up unzipped files:"
echo "  node$version_platform"

# /bin/rm -rf node$version_platform

echo ""
echo "To prepare your command-line environment to run NodeJS v$version:"
echo "  cd .."
echo "  source ./SETUP.bash"
echo ""
