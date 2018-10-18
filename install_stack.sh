#!/bin/bash

set -e

PROF_FILE="/etc/profile.d/haskell.sh"
GHC_VERSION="8.0.2"

echo "-------- install stack --------"
curl -sSL https://get.haskellstack.org/ | sh
stack update
stack setup "${GHC_VERSION}"


