#!/bin/sh
[ "`uname`" = 'Darwin' ] && sed -i '' 's/,--version-script.*//g' Makefile.am
aclocal &&
autoheader &&
libtoolize &&
automake -af &&
autoconf
