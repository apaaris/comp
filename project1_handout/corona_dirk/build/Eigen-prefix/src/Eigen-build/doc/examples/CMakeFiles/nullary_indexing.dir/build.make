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
include doc/examples/CMakeFiles/nullary_indexing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include doc/examples/CMakeFiles/nullary_indexing.dir/compiler_depend.make

# Include the progress variables for this target.
include doc/examples/CMakeFiles/nullary_indexing.dir/progress.make

# Include the compile flags for this target's objects.
include doc/examples/CMakeFiles/nullary_indexing.dir/flags.make

doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o: doc/examples/CMakeFiles/nullary_indexing.dir/flags.make
doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o: /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/doc/examples/nullary_indexing.cpp
doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o: doc/examples/CMakeFiles/nullary_indexing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o"
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o -MF CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o.d -o CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o -c /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/doc/examples/nullary_indexing.cpp

doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.i"
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/doc/examples/nullary_indexing.cpp > CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.i

doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.s"
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/doc/examples/nullary_indexing.cpp -o CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.s

# Object files for target nullary_indexing
nullary_indexing_OBJECTS = \
"CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o"

# External object files for target nullary_indexing
nullary_indexing_EXTERNAL_OBJECTS =

doc/examples/nullary_indexing: doc/examples/CMakeFiles/nullary_indexing.dir/nullary_indexing.cpp.o
doc/examples/nullary_indexing: doc/examples/CMakeFiles/nullary_indexing.dir/build.make
doc/examples/nullary_indexing: doc/examples/CMakeFiles/nullary_indexing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable nullary_indexing"
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nullary_indexing.dir/link.txt --verbose=$(VERBOSE)
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples && ./nullary_indexing >/home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples/nullary_indexing.out

# Rule to build all files generated by this target.
doc/examples/CMakeFiles/nullary_indexing.dir/build: doc/examples/nullary_indexing
.PHONY : doc/examples/CMakeFiles/nullary_indexing.dir/build

doc/examples/CMakeFiles/nullary_indexing.dir/clean:
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/nullary_indexing.dir/cmake_clean.cmake
.PHONY : doc/examples/CMakeFiles/nullary_indexing.dir/clean

doc/examples/CMakeFiles/nullary_indexing.dir/depend:
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/doc/examples /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/doc/examples/CMakeFiles/nullary_indexing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/examples/CMakeFiles/nullary_indexing.dir/depend

