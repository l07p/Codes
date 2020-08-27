cmake_minimum_required(VERSION 3.10)

# set the project name
project(test_cmake)


# set the output folder where zour program will be created
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH $(CMAKE_BINARY_DIR))

# The following folder will be included
include_directories("${PROJECT_SOURCE_DIR}")

# add the executable
add_executable(test_cmake ${PROJECT_SOURCE_DIR}/main.cpp)
