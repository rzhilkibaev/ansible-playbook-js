#!/usr/bin/env bash

set -e
set -o pipefail

keytool -genkeypair -keysize 2048 -keyalg RSA -alias jenkins -keystore keystore -storepass notasecret -keypass notasecret -dname "CN=, OU=, O=, L=, ST=, C="
echo "Created keystore"
