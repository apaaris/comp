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
include doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/depend.make

# Include the progress variables for this target.
include doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/progress.make

# Include the compile flags for this target's objects.
include doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/flags.make

doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/compile_MatrixBase_isOnes.cpp.o: doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/flags.make
doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/compile_MatrixBase_isOnes.cpp.o: doc/snippets/compile_MatrixBase_isOnes.cpp
doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/compile_MatrixBase_isOnes.cpp.o: /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/doc/snippets/MatrixBase_isOnes.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/compile_MatrixBase_isOnes.cpp.o"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/doc/snippets && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/compile_MatrixBase_isOnes.dir/compile_MatrixBase_isOnes.cpp.o -c /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/doc/snippets/compile_MatrixBase_isOnes.cpp

doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/compile_MatrixBase_isOnes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_MatrixBase_isOnes.dir/compile_MatrixBase_isOnes.cpp.i"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/doc/snippets/compile_MatrixBase_isOnes.cpp > CMakeFiles/compile_MatrixBase_isOnes.dir/compile_MatrixBase_isOnes.cpp.i

doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/compile_MatrixBase_isOnes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_MatrixBase_isOnes.dir/compile_MatrixBase_isOnes.cpp.s"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/doc/snippets/compile_MatrixBase_isOnes.cpp -o CMakeFiles/compile_MatrixBase_isOnes.dir/compile_MatrixBase_isOnes.cpp.s

# Object files for target compile_MatrixBase_isOnes
compile_MatrixBase_isOnes_OBJECTS = \
"CMakeFiles/compile_MatrixBase_isOnes.dir/compile_MatrixBase_isOnes.cpp.o"

# External object files for target compile_MatrixBase_isOnes
compile_MatrixBase_isOnes_EXTERNAL_OBJECTS =

doc/snippets/compile_MatrixBase_isOnes: doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/compile_MatrixBase_isOnes.cpp.o
doc/snippets/compile_MatrixBase_isOnes: doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/build.make
doc/snippets/compile_MatrixBase_isOnes: doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable compile_MatrixBase_isOnes"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/doc/snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compile_MatrixBase_isOnes.dir/link.txt --verbose=$(VERBOSE)
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/doc/snippets && ./compile_MatrixBase_isOnes >/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/doc/snippets/MatrixBase_isOnes.out

# Rule to build all files generated by this target.
doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/build: doc/snippets/compile_MatrixBase_isOnes

.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/build

doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/clean:
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/doc/snippets && $(CMAKE_COMMAND) -P CMakeFiles/compile_MatrixBase_isOnes.dir/cmake_clean.cmake
.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/clean

doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/depend:
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/doc/snippets /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/doc/snippets /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_isOnes.dir/depend

