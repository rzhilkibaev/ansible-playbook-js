#!/usr/bin/env bash

set -e
set -o pipefail

source "setup-secrets.sh"

PROVIDER=aws vagrant "$@"
