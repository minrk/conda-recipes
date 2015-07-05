#!/bin/bash

# if [ `uname` == Darwin ]; then
#   export MACOSX_DEPLOYMENT_TARGET=10.9
# fi
# env
# cp $RECIPE_DIR/Makefile.config ./
mkdir build
cd build
cmake ..
make all
make install
