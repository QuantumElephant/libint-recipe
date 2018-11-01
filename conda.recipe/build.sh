#!/usr/bin/env bash

env

export CC="ccache $CC"
export CXX="ccache $CXX"

# configure
./configure --with-cxx-optflags='-O1' --prefix=${PREFIX} --enable-shared=yes --enable-static=yes

# build
make -j${CPU_COUNT}

# install
make install

# check
#LD_LIBRARY_PATH=${PREFIX}/lib make check
make check
