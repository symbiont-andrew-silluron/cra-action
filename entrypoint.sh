#!/bin/bash

# Exit if any subcommand fails
set -e 


# Setup node modules if needed
if [ -e /github/workspace/web/node_modules/.bin/jest ]; then
    setup=""
else
    echo "## Installing node_modules..."
    if [ -f yarn.lock ]; then
        setup="yarn --non-interactive --silent --ignore-scripts --production=false &&"
    else
        setup="NODE_ENV=development npm install &&"
    fi
fi


echo "## Running CRA"
args=$@
pwd
ls -a
cd /github/workspace/web
pwd
ls -a
# sh -c "$setup ./node_modules/.bin/react-scripts test $args"
