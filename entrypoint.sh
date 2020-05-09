#!/bin/sh

# Exit if any subcommand fails
set -e 

# Change working directory (https://github.community/t5/GitHub-Actions/Github-actions-working-directory-incorrectly-documented/td-p/29201), workaround until GitHub actions implements per action directory
if [ $workingDirectory ]; then
    cwd $workingDirectory
fi

# Setup node modules if needed
if [ -e node_modules/.bin/jest ]; then
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
sh -c "$setup ./node_modules/.bin/react-scripts test $args"