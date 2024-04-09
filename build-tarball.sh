#!/bin/bash

set -x
set -eEuo pipefail

target="${INPUT_TARGET}"
bin="${INPUT_BIN}"
checksum=${INPUT_CHECKSUM}
archive="$bin-$target"
command="cargo"

host=$(rustc -Vv | grep 'host: ' | cut -c 7-)

if [[ "${host}" != "${target}" ]]; then
	command="cross"
fi

if [[ "$command" == "cross" ]]; then
	if ! type -P cross &>/dev/null; then
		cargo install cross --locked
	fi
fi

rustup target add $target
$command build --release --bin $bin --target $target

mkdir -p bin
cp "target/$target/release/$bin" bin
tar acf "${PWD}/${archive}.tar.gz" bin README.md LICENSE
shasum -a $checksum "${archive}.tar.gz" >"${archive}.tar.gz.sha$checksum"
