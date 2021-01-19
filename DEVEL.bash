
. ./SETUP.bash

echo
echo "Checking for 'npm'"
which npm 2>/dev/null

if [ $? != 0 ] ; then
    # Failed to find npm
    if [ -f "$CELL_BLOCK_HTML_HOME/linux/bin/npm" ] ; then
	export PATH="$CELL_BLOCK_HTML_HOME/linux/bin:$PATH"
	echo "Added CELL_BLOCK_HTML_HOME/linux/bin Node Package Manager 'npm' into PATH"
    else
	if [ -f "/opt/nodejs/bin/npm" ] ; then
	    export PATH=/opt/nodejs/bin/:$PATH
	    echo "Added system-installed Node Package Manager 'npm' into PATH"
	else	  
	    echo "Failed to find" 1>&2
	    return
	fi
    fi
else
    echo
    echo "Suggested minimum version of npm for Cell Block HTML: 5.6.0"
    npm_version=`npm -v --quiet`
    echo "Version of detected npm: $npm_version"
    echo
fi


