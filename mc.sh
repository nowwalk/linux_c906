#!/bin/bash

#set -e
#set -x

#make ARCH=riscv licheerv_defconfig
make -j6 ARCH=riscv CROSS_COMPILE=~/temp/licheerv-boot-build/toolchain/riscv64-unknown-linux-gnu/bin/riscv64-unknown-linux-gnu- V=1

~/temp/licheerv-boot-build/toolchain/riscv64-unknown-linux-gnu/bin/riscv64-unknown-linux-gnu-objdump -d -S vmlinux > vmlinux.lst
