cmake_minimum_required(VERSION 3.13)
set(CMAKE_C_STANDARD 99)

project(clac LANGUAGES C)

add_subdirectory(deps/linenoise)
add_subdirectory(deps/sds)

include_directories(deps/linenoise)
include_directories(deps/sds)

enable_testing()
add_executable(clac clac.c)

target_link_libraries(clac linenoise)
target_link_libraries(clac sds)
target_link_libraries(clac m)