CMAKE_MINIMUM_REQUIRED_VERSION(3.18.0)

# about this project
# ------------------
project(demo)
SET(PROJECT_VERSION_MAJOR "1")
SET(PROJECT_VERSION_MINOR "0")
SET(PROJECT_VERSION_PATCH "0")
SET(VERSION "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")

# set env
# ------------------
add_definitions(-DDEF_RET_YES)
include_directories(${PROJECT_SOURCE_DIR}/inc)
link_directories(${PROJECT_SOURCE_DIR}/external/lib)

message ("Binary Tree path: ${PROJECT_BINARY_DIR}")

# add subfolders
#---------------
add_subdirectory(libssrc)
add_subdirectory(dlls)
add_subdirectory(exes)