#!/bin/sh

set -e

arg_version="${1}"

if [ -z "${arg_version}" ]; then
    echo "Usage: $0 <version>"
    exit 1
fi

sed "s/@VERSION@/${arg_version}/g" PKGBUILD.in > PKGBUILD
makepkg
