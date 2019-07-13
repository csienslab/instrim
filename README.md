# InsTrim
InsTrim: Lightweight Instrumentation for Coverage-guided Fuzzing

## Build
### Prerequisite
+ llvm-8.0-dev
+ clang-8.0
+ cmake >= 3.2

### Make
```sh
git clone https://github.com/csienslab/instrim.git
cd instrim
cmake .
make
```

### Patch and build AFL Fuzzer
```sh
wget http://lcamtuf.coredump.cx/afl/releases/afl-2.52b.tgz
tar -xvf afl-2.52b.tgz
cd afl-2.52b
patch -p1 < ../instrim/afl-fuzzer.patch
make
cd llvm_mode
make
```

## Usage
### Setup the environment
```sh
export INSTRIM_LIB=[absolute path of instrim/libLLVMInsTrim.so]
```
### Instrument the target program
With `Instrim`
```sh
MARKSET=1 afl-2.52b/afl-clang-fast [compilation options, your target ...]
```
With `Instrim-Approx`
```sh
MARKSET=1 LOOPHEAD=1 afl-2.52b/afl-clang-fast [compilation options, your target ...]
```
Then you can use AFL with LLVM mode to fuzz those instrumented binaries.
