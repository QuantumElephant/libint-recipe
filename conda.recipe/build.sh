#!/usr/bin/env bash

env

export CC="ccache $CC"
export CXX="ccache $CXX"

# configure
./configure --with-cxx-optflags='-O1' --prefix=${PREFIX} --enable-shared=yes --enable-static=no

# build
make -j${CPU_COUNT}
make check

# install
make install

# check
#LD_LIBRARY_PATH=${PREFIX}/lib make check
