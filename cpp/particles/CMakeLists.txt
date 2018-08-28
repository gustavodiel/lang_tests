cmake_minimum_required (VERSION 2.6)

project (Particles)

find_package(Threads)

add_executable(Particles particles.cpp)


target_link_libraries (Particles ${CMAKE_THREAD_LIBS_INIT})