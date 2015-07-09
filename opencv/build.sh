#!/bin/bash

if [ `uname` == Darwin ]; then
  export MACOSX_DEPLOYMENT_TARGET=10.9
fi

mkdir build
cd build
cmake                                                               \
    -DPYTHON_EXECUTABLE=$PYTHON                                     \
    -DCMAKE_INSTALL_PREFIX=$PREFIX                                  \
    -DWITH_CUDA=OFF                                                 \
    -DWITH_AVFOUNDATION=OFF                                         \
    -DWITH_FFMPEG=OFF                                               \
    -DJPEG_INCLUDE_DIR:PATH=$PREFIX/include                         \
    -DJPEG_LIBRARY:FILEPATH=$PREFIX/lib/libjpeg.so                  \
    -DPNG_PNG_INCLUDE_DIR:PATH=$PREFIX/include                      \
    -DPNG_LIBRARY:FILEPATH=$PREFIX/lib/libpng.so                    \
    -DZLIB_INCLUDE_DIR:PATH=$PREFIX/include                         \
    -DZLIB_LIBRARY:FILEPATH=$PREFIX/lib/libz.so                     \
    ..
make
make install
