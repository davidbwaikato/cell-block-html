
export CELL_BLOCK_HTML_HOME=`pwd`

cygpath --version >/dev/null 2>&1

if [ $? = 0 ] ; then
    # Running on Cygwin
    export CELL_BLOCK_HTML_OS=windows
else
    export CELL_BLOCK_HTML_OS=linux
fi


if [ -d $CELL_BLOCK_HTML_OS ] ; then
    if [ -f "$CELL_BLOCK_HTML_HOME/$CELL_BLOCK_HTML_OS/bin/node" ] \
       || [-f "$CELL_BLOCK_HTML_HOME/$CELL_BLOCK_HTML_OS/bin/node.exe" ] ; then
	export PATH="$CELL_BLOCK_HTML_HOME/$CELL_BLOCK_HTML_OS/bin:$PATH"
	echo ""
	echo "+ Added <CELL_BLOCK_HTML_HOME>/$CELL_BLOCK_HTML_OS/bin NodeJS into PATH"
	echo ""
    else
	echo "Found: <CELL_BLOCK_HTML_HOME>/$CELL_BLOCK_HTML_OS" 1>&2
	echo "But failed to find: <CELL_BLOCK_HTML_HOME>/$CELL_BLOCK_HTML_OS/bin/node" 1>&2
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


