#!/bin/bash

set -x
set -eEuo pipefail

#
# tar
# platform
# exe
#

tar="tar"
shasum="shasum"
case "$(uname -s)" in
Linux)
	platform="unix"
	;;
Darwin)
	platform="unix"
	# Work around https://github.com/actions/cache/issues/403 by using GNU tar
	# instead of BSD tar.
	tar="gtar"
	if ! type -P gtar &>/dev/null; then
		brew install gnu-tar &>/dev/null
	fi
	if [[ -z "${INPUT_TARGET:-}" ]]; then
		warn "GitHub Actions changed default architecture of macos-latest since macos-14; consider passing 'target' input option to clarify which target you are building for"
	fi
	;;
MINGW* | MSYS* | CYGWIN* | Windows_NT)
	platform="windows"
	exe=".exe"
	shasum="sha256sum"
	;;
*) bail "unrecognized OS type '$(uname -s)'" ;;
esac

#
# INPUT_XXX
#

target="${INPUT_TARGET}"
bin="${INPUT_BIN}"
checksum=${INPUT_CHECKSUM}
profile="${INPUT_PROFILE}"
archive="$bin-$target"
target_lower="${target//-/_}"
target_lower="${target_lower//./_}"
target_upper=$(tr '[:lower:]' '[:upper:]' <<<"${target_lower}")

#
# cargo/cross
#

host=$(rustc -Vv | grep 'host: ' | cut -c 7-)
command="cargo"

if [[ "${host}" != "${target}" ]]; then
	case "${target}" in
	# https://github.com/cross-rs/cross#supported-targets
	*-windows* | *-darwin* | *-fuchsia* | *-redox*) ;;
	*)
		# If any of these are set, it is obvious that the user has set up a cross-compilation environment on the host.
		if [[ -z "$(eval "echo \${CARGO_TARGET_${target_upper}_LINKER:-}")" ]] && [[ -z "$(eval "echo \${CARGO_TARGET_${target_upper}_RUNNER:-}")" ]]; then
			command="cross"
		fi
		;;
	esac
fi

if [[ "$command" == "cross" ]]; then
	if ! type -P cross &>/dev/null; then
		cargo install cross --locked
	fi
fi

#
# build
#

rustup target add $target
$command build --release --bin $bin --target $target

#
# package
#

mkdir -p bin
cp "target/$target/$profile/$bin${exe:-}" bin

$tar acf "${PWD}/${archive}.tar.gz" bin README.md LICENSE
$shasum -a $checksum "${archive}.tar.gz" >"${archive}.tar.gz.sha$checksum"

if [[ "${platform}" == "windows" ]]; then
    7z a "${PWD}/${archive.zip}" bin README.md LICENSE
    $shasum -a $checksum "${archive}.zip" >"${archive}.zip.sha$checksum"
fi
