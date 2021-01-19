#!/bin/bash

full_progname=`pwd`/${BASH_SOURCE}
full_parentdir=${full_progname%/*/*}

cd "$full_parentdir" && . ./SETUP.bash && cd cbhtml-ethercalc && make

