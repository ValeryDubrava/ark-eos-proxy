cmake_minimum_required(VERSION 3.20)
project(EOSProxy LANGUAGES CXX ASM_MASM)

if(NOT WIN32)
    message(FATAL_ERROR "This project only builds on Windows with MSVC (x64).")
endif()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(EOSSDK-Win64-Shipping SHARED
    src/dllmain.cpp
    src/hooks.cpp
    src/session_mock.cpp
    src/eossdk_thunks.asm
)

target_include_directories(EOSSDK-Win64-Shipping PRIVATE
    third_party
)

target_link_options(EOSSDK-Win64-Shipping PRIVATE
    "/DEF:${CMAKE_CURRENT_SOURCE_DIR}/eossdk_proxy.def"
)

set_target_properties(EOSSDK-Win64-Shipping PROPERTIES
    OUTPUT_NAME "EOSSDK-Win64-Shipping"
    SUFFIX ".dll"
    LINK_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/eossdk_proxy.def"
)
