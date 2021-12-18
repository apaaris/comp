# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build

# Include any dependencies generated for this target.
include bench/spbench/CMakeFiles/spbenchsolver.dir/depend.make

# Include the progress variables for this target.
include bench/spbench/CMakeFiles/spbenchsolver.dir/progress.make

# Include the compile flags for this target's objects.
include bench/spbench/CMakeFiles/spbenchsolver.dir/flags.make

bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o: bench/spbench/CMakeFiles/spbenchsolver.dir/flags.make
bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o: /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/bench/spbench/spbenchsolver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/bench/spbench && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o -c /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/bench/spbench/spbenchsolver.cpp

bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.i"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/bench/spbench && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/bench/spbench/spbenchsolver.cpp > CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.i

bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.s"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/bench/spbench && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/bench/spbench/spbenchsolver.cpp -o CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.s

# Object files for target spbenchsolver
spbenchsolver_OBJECTS = \
"CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o"

# External object files for target spbenchsolver
spbenchsolver_EXTERNAL_OBJECTS =

bench/spbench/spbenchsolver: bench/spbench/CMakeFiles/spbenchsolver.dir/spbenchsolver.cpp.o
bench/spbench/spbenchsolver: bench/spbench/CMakeFiles/spbenchsolver.dir/build.make
bench/spbench/spbenchsolver: /usr/lib/x86_64-linux-gnu/libsuperlu.so
bench/spbench/spbenchsolver: blas/libeigen_blas_static.a
bench/spbench/spbenchsolver: /usr/lib/x86_64-linux-gnu/librt.so
bench/spbench/spbenchsolver: bench/spbench/CMakeFiles/spbenchsolver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable spbenchsolver"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/bench/spbench && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spbenchsolver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bench/spbench/CMakeFiles/spbenchsolver.dir/build: bench/spbench/spbenchsolver

.PHONY : bench/spbench/CMakeFiles/spbenchsolver.dir/build

bench/spbench/CMakeFiles/spbenchsolver.dir/clean:
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/bench/spbench && $(CMAKE_COMMAND) -P CMakeFiles/spbenchsolver.dir/cmake_clean.cmake
.PHONY : bench/spbench/CMakeFiles/spbenchsolver.dir/clean

bench/spbench/CMakeFiles/spbenchsolver.dir/depend:
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/bench/spbench /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/bench/spbench /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/bench/spbench/CMakeFiles/spbenchsolver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bench/spbench/CMakeFiles/spbenchsolver.dir/depend

