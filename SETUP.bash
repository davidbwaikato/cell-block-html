
export CELL_BLOCK_HTML_HOME=`pwd`

if [ -d /opt/nodejs/bin ] ; then
  export PATH=/opt/nodejs/bin/:$PATH
  echo "Added NodeJS into PATH"
fi
