#!/bin/bash

set -x

if [ $# -lt 1 ]; then
  echo "usage: ./release.sh [LEVEL] (--execute --no-verify)"
  echo "error: missing release arguments, exit..."
  exit 1
fi

# git-cliff will create "CHANGELOG.md" for each packages, but we only need the one from cargo-ci-template-cli.
export GIT_CLIFF_CONFIG=$PWD/cliff.toml
export GIT_CLIFF_WORKDIR=$PWD
export GIT_CLIFF_REPOSITORY=$PWD
export GIT_CLIFF_OUTPUT=$PWD/CHANGELOG.md
# export GIT_CLIFF_PREPEND=$PWD/CHANGELOG.md

cargo release "$@"
