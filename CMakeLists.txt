find_package(LLVM 4.0 REQUIRED CONFIG)
cmake_minimum_required(VERSION 3.2)

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -fno-rtti")

add_library(LLVMInsTrim MODULE LLVMInsTrim.cpp MarkNodes.cpp)
