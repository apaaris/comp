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
CMAKE_SOURCE_DIR = /home/apaaris/eth/comp/serie3/2d-FD_pure

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/apaaris/eth/comp/serie3/2d-FD_pure/build

# Include any dependencies generated for this target.
include CMakeFiles/finite_difference.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/finite_difference.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/finite_difference.dir/flags.make

CMakeFiles/finite_difference.dir/finite_difference.cpp.o: CMakeFiles/finite_difference.dir/flags.make
CMakeFiles/finite_difference.dir/finite_difference.cpp.o: ../finite_difference.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/apaaris/eth/comp/serie3/2d-FD_pure/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/finite_difference.dir/finite_difference.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/finite_difference.dir/finite_difference.cpp.o -c /home/apaaris/eth/comp/serie3/2d-FD_pure/finite_difference.cpp

CMakeFiles/finite_difference.dir/finite_difference.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/finite_difference.dir/finite_difference.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/apaaris/eth/comp/serie3/2d-FD_pure/finite_difference.cpp > CMakeFiles/finite_difference.dir/finite_difference.cpp.i

CMakeFiles/finite_difference.dir/finite_difference.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/finite_difference.dir/finite_difference.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/apaaris/eth/comp/serie3/2d-FD_pure/finite_difference.cpp -o CMakeFiles/finite_difference.dir/finite_difference.cpp.s

# Object files for target finite_difference
finite_difference_OBJECTS = \
"CMakeFiles/finite_difference.dir/finite_difference.cpp.o"

# External object files for target finite_difference
finite_difference_EXTERNAL_OBJECTS =

finite_difference: CMakeFiles/finite_difference.dir/finite_difference.cpp.o
finite_difference: CMakeFiles/finite_difference.dir/build.make
finite_difference: CMakeFiles/finite_difference.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/apaaris/eth/comp/serie3/2d-FD_pure/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable finite_difference"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/finite_difference.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/finite_difference.dir/build: finite_difference

.PHONY : CMakeFiles/finite_difference.dir/build

CMakeFiles/finite_difference.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/finite_difference.dir/cmake_clean.cmake
.PHONY : CMakeFiles/finite_difference.dir/clean

CMakeFiles/finite_difference.dir/depend:
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/apaaris/eth/comp/serie3/2d-FD_pure /home/apaaris/eth/comp/serie3/2d-FD_pure /home/apaaris/eth/comp/serie3/2d-FD_pure/build /home/apaaris/eth/comp/serie3/2d-FD_pure/build /home/apaaris/eth/comp/serie3/2d-FD_pure/build/CMakeFiles/finite_difference.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/finite_difference.dir/depend

