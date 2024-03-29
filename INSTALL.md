# Overview

In addition to commonly installed Unix command-line tools, to install
and operate Cell-Block HTML, you will need:

  - NodeJS/npm
  - realpath 

Optional:
  - Redis
  
The code has been developed and tested using a variety of Linux
distributions.  It has also been run under Windows using Cygwin.

As a convenience, tarballs of supporting tools not typically shipped
as standard with Unix system are located in the 'packages' directory
for convenience.  These allow for installation without admin rights.

NodeJS is the most important of these, as it is matched to be a
version known to work with the EtherCalc/SocialCalc code bases.  The
'coreutils' tarball provides 'realpath'.  The Redis tarball is there
if you want to increase performance through its in-memory caching
server capability.

## TLDR:

Run the appropriate INSTAL-<OS>.sh in 'packages' to add a version of
NodeJS that is known to work with the EtherCalc code base.  For
exmaple:

    cd packages
    ./INSTALL-LINUX.sh
    cd ..

Next, in the top-level directory:
  
    source ./SETUP.bash

Finally, skip to the Code Checkout section of this INSTALL.txt

## Additional Detail

At the time of writing, the code-base to ethercalc has a dependency on
Gulp 3.x that prevents newer version of NodeJS/npm from working
properly.  For now, the simplest thing to do is to work with an older
version of NodeJS/npm that is compatible with Gulp 3.x, such as
version 11.15.0.

Included here in the 'packages' directory are binary releases of this
very version.  In the relevant packages directory, run the relevant
'INSTALL-<OS>-NODEJS.sh' script.

Having done this, 'cd' back up to the top-level diretory, and source
the SETUP.bash file:

    cd ..
    source ./SETUP.bash

# Code Checkout


First install the customized socialcalc component:

    cd socialcalc
    npm install
    npm run build

The last line generates a lot of warnings and errors (!!) related to
Javascript as best as I have been able to establish these messages are
in fact benign, and the files it generates work just fine with the
parent project (ethtercalc)

Return to the root cell-block-html folder:

    cd ..

And build:

    cd cbhtml-ethercalc
    npm install

To generate the webpack files and start the server:

    make

Or to run within a website that needs a URL prefix, launch in the form:

    make ETHERCALC_ARGS="--basepath /cell-block-html"

This ultimately runs:
    node app.js --cors --basepath /cell-block-html
    Please connect to: http://<hostname>:8000/
    ...


# Notes

The server tries to use Redis as the backing store, but given the
minimal setup this INSTALL.txt file describes, no Redis backing store
server is running, leading to:

    Error: Redis connection to localhost:6379 failed - connect ECONNREFUSED 127.0.0.1:6379
    
It then falls back to using local file system storage


