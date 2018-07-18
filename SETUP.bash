
export CELL_BLOCK_HTML_HOME=`pwd`

echo
echo "Checking for npm"
which npm 2>/dev/null

if [ $? != 0 ] ; then
  # Failed to find
  if [ -d "/opt/nodejs/bin" ] ; then
    export PATH=/opt/nodejs/bin/:$PATH
    echo "Added NodeJS into PATH"
  else
    echo "Failed to find" 1>&2
    return
  fi
else
  echo
  echo "Suggested minimum version of npm for Cell Block HTML: 5.6.0"
  npm_version=`npm -v --quiet`
  echo "Version of detected npm: $npm_version"
  echo
fi


