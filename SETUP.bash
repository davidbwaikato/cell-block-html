
export CELL_BLOCK_HTML_HOME=`pwd`

echo
echo "Checking for 'node'"
which node 2>/dev/null

if [ $? != 0 ] ; then
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
    echo
#    echo "Suggested minimum version of 'node' for Cell Block HTML: v?.?.?"
    nodejs_version=`node -v `
    echo "Version of detected 'node': $nodejs_version"
    echo
fi


