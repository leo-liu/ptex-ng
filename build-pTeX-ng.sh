#! /bin/sh
export NG_SRC_DIR=`pwd`
cd $NG_SRC_DIR/libs/zlib && ./configure && make
cp libz.a $NG_SRC_DIR/texk/ptex-ng
cd $NG_SRC_DIR/libs/libpng && ./configure && make
cp libpng.a $NG_SRC_DIR/texk/ptex-ng
cd $NG_SRC_DIR/texk/kpathsea && ./configure && make
cp .libs/libkpathsea.a $NG_SRC_DIR/texk/ptex-ng
cd $NG_SRC_DIR/texk/ptexenc && ./configure && make
cp .libs/libptexenc.a $NG_SRC_DIR/texk/ptex-ng
cd $NG_SRC_DIR/texk/libdpx && ./configure && make
cp libdpx.a $NG_SRC_DIR/texk/ptex-ng
cd $NG_SRC_DIR/texk/ptex-ng && make
