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
include test/CMakeFiles/conservative_resize_4.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/conservative_resize_4.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/conservative_resize_4.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/conservative_resize_4.dir/flags.make

test/CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.o: test/CMakeFiles/conservative_resize_4.dir/flags.make
test/CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.o: /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/test/conservative_resize.cpp
test/CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.o: test/CMakeFiles/conservative_resize_4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.o"
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.o -MF CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.o.d -o CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.o -c /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/test/conservative_resize.cpp

test/CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.i"
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/test/conservative_resize.cpp > CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.i

test/CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.s"
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/test/conservative_resize.cpp -o CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.s

# Object files for target conservative_resize_4
conservative_resize_4_OBJECTS = \
"CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.o"

# External object files for target conservative_resize_4
conservative_resize_4_EXTERNAL_OBJECTS =

test/conservative_resize_4: test/CMakeFiles/conservative_resize_4.dir/conservative_resize.cpp.o
test/conservative_resize_4: test/CMakeFiles/conservative_resize_4.dir/build.make
test/conservative_resize_4: test/CMakeFiles/conservative_resize_4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable conservative_resize_4"
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/conservative_resize_4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/conservative_resize_4.dir/build: test/conservative_resize_4
.PHONY : test/CMakeFiles/conservative_resize_4.dir/build

test/CMakeFiles/conservative_resize_4.dir/clean:
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/test && $(CMAKE_COMMAND) -P CMakeFiles/conservative_resize_4.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/conservative_resize_4.dir/clean

test/CMakeFiles/conservative_resize_4.dir/depend:
	cd /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen/test /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/test /home/apaaris/comp/project1_handout/corona_dirk/build/Eigen-prefix/src/Eigen-build/test/CMakeFiles/conservative_resize_4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/conservative_resize_4.dir/depend

