#!/bin/bash

if [ -f ./packages/redis-6.2.6/src/redis-server  ] ; then

    ./packages/redis-6.2.6/src/redis-server
else

    echo "Failed to find 'redis-server'" >&2
    echo "Have you untarred, and compiled up the redis tarball in packages?" >&2
    exit 1
fi
