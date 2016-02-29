#!/usr/bin/env bash

# this script ensures all files required to run the playbook are present

set -e
set -o pipefail

# ask to generate keystore if not present
if [ ! -f keystore ]; then
    echo -n "generate keystore? [Y/n]: "
    read RESPONSE
    if  [ "x$RESPONSE" != "xn" ]; then
        ./generate-test-keystore.sh
    fi
fi

echo "Initialized"
