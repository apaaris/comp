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
include test/CMakeFiles/product_selfadjoint_2.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/product_selfadjoint_2.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/product_selfadjoint_2.dir/flags.make

test/CMakeFiles/product_selfadjoint_2.dir/product_selfadjoint.cpp.o: test/CMakeFiles/product_selfadjoint_2.dir/flags.make
test/CMakeFiles/product_selfadjoint_2.dir/product_selfadjoint.cpp.o: /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/test/product_selfadjoint.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/product_selfadjoint_2.dir/product_selfadjoint.cpp.o"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/product_selfadjoint_2.dir/product_selfadjoint.cpp.o -c /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/test/product_selfadjoint.cpp

test/CMakeFiles/product_selfadjoint_2.dir/product_selfadjoint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/product_selfadjoint_2.dir/product_selfadjoint.cpp.i"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/test/product_selfadjoint.cpp > CMakeFiles/product_selfadjoint_2.dir/product_selfadjoint.cpp.i

test/CMakeFiles/product_selfadjoint_2.dir/product_selfadjoint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/product_selfadjoint_2.dir/product_selfadjoint.cpp.s"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/test/product_selfadjoint.cpp -o CMakeFiles/product_selfadjoint_2.dir/product_selfadjoint.cpp.s

# Object files for target product_selfadjoint_2
product_selfadjoint_2_OBJECTS = \
"CMakeFiles/product_selfadjoint_2.dir/product_selfadjoint.cpp.o"

# External object files for target product_selfadjoint_2
product_selfadjoint_2_EXTERNAL_OBJECTS =

test/product_selfadjoint_2: test/CMakeFiles/product_selfadjoint_2.dir/product_selfadjoint.cpp.o
test/product_selfadjoint_2: test/CMakeFiles/product_selfadjoint_2.dir/build.make
test/product_selfadjoint_2: test/CMakeFiles/product_selfadjoint_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable product_selfadjoint_2"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/product_selfadjoint_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/product_selfadjoint_2.dir/build: test/product_selfadjoint_2

.PHONY : test/CMakeFiles/product_selfadjoint_2.dir/build

test/CMakeFiles/product_selfadjoint_2.dir/clean:
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/test && $(CMAKE_COMMAND) -P CMakeFiles/product_selfadjoint_2.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/product_selfadjoint_2.dir/clean

test/CMakeFiles/product_selfadjoint_2.dir/depend:
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/test /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/test /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/test/CMakeFiles/product_selfadjoint_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/product_selfadjoint_2.dir/depend

