#!/bin/sh

test -n "${srcdir}" || srcdir=`dirname "$0"`
test -n "${srcdir}" || srcdir="$(pwd)"

olddir="$(pwd)"
cd "$srcdir"

./bootstrap.sh

cd "$olddir"
"$srcdir/configure" "$@"
