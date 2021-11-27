
export CELL_BLOCK_HTML_HOME=`pwd`


if [ -d 'linux' ] ; then
    # Failed to find
    if [ -f "$CELL_BLOCK_HTML_HOME/linux/bin/node" ] ; then
	export PATH="$CELL_BLOCK_HTML_HOME/linux/bin:$PATH"
	echo "Added CELL_BLOCK_HTML_HOME/linux/bin NodeJS into PATH"
    else
	if [ -d "/opt/nodejs/bin" ] ; then
	    export PATH=/opt/nodejs/bin/:$PATH
	    echo "Added system-installed NodeJS into PATH"
	else	  
	    echo "Failed to find" 1>&2
	    return
	fi
    fi
else

    echo ""
    echo "Checking for system installed 'node'"
    which node 2>&1 >/dev/null

    echo ""
    if [ $? == 0 ] ; then

	echo "Detected 'node' on the file-system:"
	echo "  `which node`"

	echo ""
	nodejs_version=`node -v `
	echo "Detected version of 'node':"
	echo "  $nodejs_version"
    fi
    echo "Suggested version of 'node' for Cell Block HTML:"
    echo "  v11.15.0"
    echo ""
fi


