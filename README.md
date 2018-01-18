# InsTrim
InsTrim: Lightweight Instrumentation for Coverage-guided Fuzzing

## Build
### Prerequisite
+ llvm-4.0-dev
+ clang-4.0
+ cmake >= 3.2

### Make
```sh
git clone https://github.com/csienslab/instrim.git
cd instrim
cmake .
make
```

## Usage
Enable InsTrim optimization
```sh
MARKSET=1 clang-4.0 -Xclang -load -Xclang ${path of libLLVMInsTrim.so} ${source files} ...
```
Enable InsTrim-Approx optimization
```sh
MARKSET=1 LOOPHEAD=1 clang-4.0 -Xclang -load -Xclang ${path of libLLVMInsTrim.so} ${source files} ...
```
