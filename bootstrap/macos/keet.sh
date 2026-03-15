#!/bin/sh

set -o errexit
set -o nounset

HOMEBREW_NO_ANALYTICS=1 HOMEBREW_NO_AUTO_UPDATE=1 \
  brew install --cask keet
