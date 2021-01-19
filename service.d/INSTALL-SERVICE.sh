#!/bin/bash

if [ -d "/etc/systemd/system/" ] ; then

    if [ "x$CELL_BLOCK_HTML_HOME" = "x" ] ; then
	cd .. && source ./SETUP.bash && cd service.d
    fi

    cellblockhtml_service_username=${1-www-data}
    echo ""
    
    echo "****"
    echo "* Generating cellblockhtml.service from cellblockhtml.service.in"
    echo "****"
    cat cellblockhtml.service.in \
	| sed "s%@CELL_BLOCK_HTML_HOME@%$CELL_BLOCK_HTML_HOME%g" \
	| sed "s%@CELLBLOCKHTML_SERVICE_USERNAME@%$cellblockhtml_service_username%g" \
	      > cellblockhtml.service
     
    echo "****"
    echo "* Copying cellblockhtml.service to /etc/systemd/system/"
    echo "****"
    sudo /bin/cp cellblockhtml.service /etc/systemd/system/.

    echo ""
    echo "----"
    echo "General info:"
    echo "  In the event of the service being updated, you will most likely need to run:"
    echo "    sudo systemctl daemon-reload"
    echo ""
    echo "  To enable this service to be run at boot-up time, run:"
    echo "    sudo systemctl enable cellblockhtml"
    echo "----"
    
else
    echo "Error: Failed to find '/etc/systemd/system'" >&2
    echo "This install script was developed on a Debian system." >&2
    echo "It looks like your Linux Distribution uses a different directory structure for services" >&2

    exit 1
fi  

