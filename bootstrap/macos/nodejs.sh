#!/bin/sh

set -o errexit
set -o nounset

if [ -x "$(command -v node)" ]; then
  exit 0
fi

if [ -x "$(command -v nvm)" ]; then
  # Download and install Node.js:
  nvm install --lts
  exit 0
fi

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install --lts
