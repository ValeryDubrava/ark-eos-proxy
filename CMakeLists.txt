cmake_minimum_required(VERSION 3.20)
project(EOSProxy LANGUAGES CXX)

if(NOT WIN32)
    message(FATAL_ERROR "This project only builds on Windows with MSVC (x64).")
endif()

add_library(EOSSDK-Win64-Shipping SHARED
    src/dllmain.cpp
    eossdk_proxy.def
)

set_target_properties(EOSSDK-Win64-Shipping PROPERTIES
    OUTPUT_NAME "EOSSDK-Win64-Shipping"
    SUFFIX ".dll"
)
