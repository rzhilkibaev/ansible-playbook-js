#!/usr/bin/env bash

set -e
set -o pipefail

PROVIDER=managed vagrant "$@"
