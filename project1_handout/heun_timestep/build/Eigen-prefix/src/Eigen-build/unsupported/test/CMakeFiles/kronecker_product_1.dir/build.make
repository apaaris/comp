# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen-prefix/src/Eigen-build

# Include any dependencies generated for this target.
include unsupported/test/CMakeFiles/kronecker_product_1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include unsupported/test/CMakeFiles/kronecker_product_1.dir/compiler_depend.make

# Include the progress variables for this target.
include unsupported/test/CMakeFiles/kronecker_product_1.dir/progress.make

# Include the compile flags for this target's objects.
include unsupported/test/CMakeFiles/kronecker_product_1.dir/flags.make

unsupported/test/CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.o: unsupported/test/CMakeFiles/kronecker_product_1.dir/flags.make
unsupported/test/CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.o: /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/unsupported/test/kronecker_product.cpp
unsupported/test/CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.o: unsupported/test/CMakeFiles/kronecker_product_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unsupported/test/CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.o"
	cd /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen-prefix/src/Eigen-build/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT unsupported/test/CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.o -MF CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.o.d -o CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.o -c /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/unsupported/test/kronecker_product.cpp

unsupported/test/CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.i"
	cd /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen-prefix/src/Eigen-build/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/unsupported/test/kronecker_product.cpp > CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.i

unsupported/test/CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.s"
	cd /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen-prefix/src/Eigen-build/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/unsupported/test/kronecker_product.cpp -o CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.s

# Object files for target kronecker_product_1
kronecker_product_1_OBJECTS = \
"CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.o"

# External object files for target kronecker_product_1
kronecker_product_1_EXTERNAL_OBJECTS =

unsupported/test/kronecker_product_1: unsupported/test/CMakeFiles/kronecker_product_1.dir/kronecker_product.cpp.o
unsupported/test/kronecker_product_1: unsupported/test/CMakeFiles/kronecker_product_1.dir/build.make
unsupported/test/kronecker_product_1: unsupported/test/CMakeFiles/kronecker_product_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable kronecker_product_1"
	cd /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen-prefix/src/Eigen-build/unsupported/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kronecker_product_1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unsupported/test/CMakeFiles/kronecker_product_1.dir/build: unsupported/test/kronecker_product_1
.PHONY : unsupported/test/CMakeFiles/kronecker_product_1.dir/build

unsupported/test/CMakeFiles/kronecker_product_1.dir/clean:
	cd /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen-prefix/src/Eigen-build/unsupported/test && $(CMAKE_COMMAND) -P CMakeFiles/kronecker_product_1.dir/cmake_clean.cmake
.PHONY : unsupported/test/CMakeFiles/kronecker_product_1.dir/clean

unsupported/test/CMakeFiles/kronecker_product_1.dir/depend:
	cd /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen-prefix/src/Eigen-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/unsupported/test /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen-prefix/src/Eigen-build /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen-prefix/src/Eigen-build/unsupported/test /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen-prefix/src/Eigen-build/unsupported/test/CMakeFiles/kronecker_product_1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unsupported/test/CMakeFiles/kronecker_product_1.dir/depend

