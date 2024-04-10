#!/bin/bash

set -x
set -eEuo pipefail

target="${INPUT_TARGET}"
bin="${INPUT_BIN}"
checksum=${INPUT_CHECKSUM}
archive="$bin-$target"
target_lower="${target//-/_}"
target_lower="${target_lower//./_}"
target_upper=$(tr '[:lower:]' '[:upper:]' <<<"${target_lower}")

host=$(rustc -Vv | grep 'host: ' | cut -c 7-)
command="cargo"

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
cp "target/$target/release/$bin.exe" bin
tar acf "${PWD}/${archive}.tar.gz" bin README.md LICENSE
7z a "${PWD}/${archive.zip}" bin README.md LICENSE
shasum -a $checksum "${archive}.tar.gz" >"${archive}.tar.gz.sha$checksum"
shasum -a $checksum "${archive}.zip" >"${archive}.zip.sha$checksum"
