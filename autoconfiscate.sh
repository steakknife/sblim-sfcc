#!/bin/sh
set -e

[ "`uname`" = 'Darwin' ] && sed -i '' 's/,--version-script.*//g' Makefile.am
aclocal
autoheader
test -x `which glibtoolize` && glibtoolize || libtoolize
automake -af
autoconf
