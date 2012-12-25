#!/bin/sh

test -n "${srcdir}" || srcdir=`dirname "$0"`
test -n "${srcdir}" || srcdir="$(pwd)"

olddir="$(pwd)"
cd "$srcdir"

./bootstrap

cd "$olddir"
"$srcdir/configure" "$@"
