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
CMAKE_SOURCE_DIR = /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build

# Include any dependencies generated for this target.
include doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/compiler_depend.make

# Include the progress variables for this target.
include doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/progress.make

# Include the compile flags for this target's objects.
include doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/flags.make

doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.o: doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/flags.make
doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.o: /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/doc/examples/Tutorial_BlockOperations_vector.cpp
doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.o: doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.o"
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.o -MF CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.o.d -o CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.o -c /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/doc/examples/Tutorial_BlockOperations_vector.cpp

doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.i"
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/doc/examples/Tutorial_BlockOperations_vector.cpp > CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.i

doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.s"
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/doc/examples/Tutorial_BlockOperations_vector.cpp -o CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.s

# Object files for target Tutorial_BlockOperations_vector
Tutorial_BlockOperations_vector_OBJECTS = \
"CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.o"

# External object files for target Tutorial_BlockOperations_vector
Tutorial_BlockOperations_vector_EXTERNAL_OBJECTS =

doc/examples/Tutorial_BlockOperations_vector: doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/Tutorial_BlockOperations_vector.cpp.o
doc/examples/Tutorial_BlockOperations_vector: doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/build.make
doc/examples/Tutorial_BlockOperations_vector: doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Tutorial_BlockOperations_vector"
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Tutorial_BlockOperations_vector.dir/link.txt --verbose=$(VERBOSE)
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples && ./Tutorial_BlockOperations_vector >/home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples/Tutorial_BlockOperations_vector.out

# Rule to build all files generated by this target.
doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/build: doc/examples/Tutorial_BlockOperations_vector
.PHONY : doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/build

doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/clean:
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/Tutorial_BlockOperations_vector.dir/cmake_clean.cmake
.PHONY : doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/clean

doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/depend:
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/doc/examples /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/examples/CMakeFiles/Tutorial_BlockOperations_vector.dir/depend

