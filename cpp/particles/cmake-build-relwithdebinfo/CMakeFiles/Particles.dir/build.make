# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/magrathealabs/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/182.4129.51/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/magrathealabs/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/182.4129.51/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/magrathealabs/Personal/lang_tests/cpp/particles

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/magrathealabs/Personal/lang_tests/cpp/particles/cmake-build-relwithdebinfo

# Include any dependencies generated for this target.
include CMakeFiles/Particles.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Particles.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Particles.dir/flags.make

CMakeFiles/Particles.dir/particles.cpp.o: CMakeFiles/Particles.dir/flags.make
CMakeFiles/Particles.dir/particles.cpp.o: ../particles.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/magrathealabs/Personal/lang_tests/cpp/particles/cmake-build-relwithdebinfo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Particles.dir/particles.cpp.o"
	/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Particles.dir/particles.cpp.o -c /home/magrathealabs/Personal/lang_tests/cpp/particles/particles.cpp

CMakeFiles/Particles.dir/particles.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Particles.dir/particles.cpp.i"
	/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/magrathealabs/Personal/lang_tests/cpp/particles/particles.cpp > CMakeFiles/Particles.dir/particles.cpp.i

CMakeFiles/Particles.dir/particles.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Particles.dir/particles.cpp.s"
	/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/magrathealabs/Personal/lang_tests/cpp/particles/particles.cpp -o CMakeFiles/Particles.dir/particles.cpp.s

# Object files for target Particles
Particles_OBJECTS = \
"CMakeFiles/Particles.dir/particles.cpp.o"

# External object files for target Particles
Particles_EXTERNAL_OBJECTS =

Particles: CMakeFiles/Particles.dir/particles.cpp.o
Particles: CMakeFiles/Particles.dir/build.make
Particles: CMakeFiles/Particles.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/magrathealabs/Personal/lang_tests/cpp/particles/cmake-build-relwithdebinfo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Particles"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Particles.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Particles.dir/build: Particles

.PHONY : CMakeFiles/Particles.dir/build

CMakeFiles/Particles.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Particles.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Particles.dir/clean

CMakeFiles/Particles.dir/depend:
	cd /home/magrathealabs/Personal/lang_tests/cpp/particles/cmake-build-relwithdebinfo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/magrathealabs/Personal/lang_tests/cpp/particles /home/magrathealabs/Personal/lang_tests/cpp/particles /home/magrathealabs/Personal/lang_tests/cpp/particles/cmake-build-relwithdebinfo /home/magrathealabs/Personal/lang_tests/cpp/particles/cmake-build-relwithdebinfo /home/magrathealabs/Personal/lang_tests/cpp/particles/cmake-build-relwithdebinfo/CMakeFiles/Particles.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Particles.dir/depend

