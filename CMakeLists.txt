##! Prevent in-tree built.
if (${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
    message(FATAL_ERROR "Prevented in-tree built. Please create a build directory outside of the source code and call cmake from there")
endif ()

##! Prerequisites
cmake_minimum_required(VERSION 3.9)

##! Project Module path
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(project)


##! Project Name
create_project(CppEmptyProject)

##! Options
option(${PROJECT_NAME}_BUILD_TESTS "Build tests of ${PROJECT_NAME} C++ Application" ON)
option(${PROJECT_NAME}_BUILD_EXAMPLES "Build the examples of ${PROJECT_NAME} C++ Application" ON)

##! Source directory
add_subdirectory(${PROJECT_NAME})

##! Prerequisites CTEST
if (${PROJECT_NAME}_BUILD_TESTS)
    enable_testing()
    add_subdirectory(tests)
endif()

##! Demo project, contains all the documented examples.
if (${PROJECT_NAME}_BUILD_EXAMPLES)
    add_subdirectory(example)
endif ()
