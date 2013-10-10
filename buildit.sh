#!/bin/bash -e

sudo mkdir -p /usr/local/fido

sudo ../llvm/configure --build=armv7l-unknown-linux-gnueabihf \ 
--host=armv7l-unknown-linux-gnueabihf \
--target=armv7l-unknown-linux-gnueabihf --with-cpu=cortex-m3 \
--with-float=hard --with-abi=aapcs-vfp --with-fpu=neon \
--enable-targets=arm --enable-optimized --enable-assertions

sudo make
sudo make check-all
