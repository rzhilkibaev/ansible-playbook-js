#!/usr/bin/env bash

# this script ensures all files required to run the playbook are present

set -e
set -o pipefail

ensure_file_present() {
    echo "$FILE_NAME"
    if [ ! -f "$FILE_NAME" ]; then
        $CURL -o $FILE_NAME $URL
    else
        echo "######################################################################## 100.0%"
    fi
}

ensure_jdk_present() {
    echo "$FILE_NAME"
    if [ ! -f "$FILE_NAME" ]; then
        $CURL --junk-session-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" -o $FILE_NAME $URL
    else
        echo "######################################################################## 100.0%"
    fi
}

CURL="curl --progress-bar --location"

FILE_NAME="jdk-7u79-linux-x64.tar.gz"
URL="http://download.oracle.com/otn-pub/java/jdk/7u79-b15/$FILE_NAME"
#ensure_jdk_present

FILE_NAME="jdk-8u45-linux-x64.tar.gz"
URL="http://download.oracle.com/otn-pub/java/jdk/8u45-b14/$FILE_NAME"
#ensure_jdk_present

VER="1.645"
FILE_NAME="jenkins-${VER}.war"
URL="http://mirrors.jenkins-ci.org/war/${VER}/jenkins.war"
ensure_file_present

VER="0.8.2"
FILE_NAME="packer_${VER}_linux_amd64.zip"
URL="https://dl.bintray.com/mitchellh/packer/$FILE_NAME"
ensure_file_present

# ask to generate keystore if not present
if [ ! -f keystore ]; then
    echo -n "generate keystore? [Y/n]: "
    read RESPONSE
    if  [ "x$RESPONSE" != "xn" ]; then
        ./generate-test-keystore.sh
    fi
fi

echo "Done!"
