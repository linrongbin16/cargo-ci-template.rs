#!/bin/bash

set -x

if [ $# -lt 1 ]; then
	echo "usage: ./release.sh [LEVEL] (--execute --no-verify)"
	echo "error: missing release arguments, exit..."
	exit 1
fi

export GIT_CLIFF_CONFIG=$PWD/cliff.toml
export GIT_CLIFF_WORKDIR=$PWD
export GIT_CLIFF_REPOSITORY=$PWD

cargo release -p cargo_ci_template_core "$@"
cargo release -p cargo_ci_template "$@"

# git-cliff will create "CHANGELOG.md" for each packages, but we only need the one from cargo_ci_template_cli.
rm cargo_ci_template_core/CORE_CHANGELOG.md
mv cargo_ci_template_cli/CLI_CHANGELOG.md CHANGELOG.md

