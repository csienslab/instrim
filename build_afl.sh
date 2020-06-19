#!/bin/bash

AFL="afl-2.52b"

wget -O- http://lcamtuf.coredump.cx/afl/releases/$AFL.tgz | tar xvz
patch -d $AFL -p1 < afl-fuzzer.patch
make -C $AFL -j
make -C $AFL/llvm_mode -j
