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
CMAKE_SOURCE_DIR = /home/apaaris/eth/comp/serie0/midpoint

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/apaaris/eth/comp/serie0/midpoint/build

# Include any dependencies generated for this target.
include CMakeFiles/test_single.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_single.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_single.dir/flags.make

CMakeFiles/test_single.dir/test_single/test_single.cpp.o: CMakeFiles/test_single.dir/flags.make
CMakeFiles/test_single.dir/test_single/test_single.cpp.o: ../test_single/test_single.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/apaaris/eth/comp/serie0/midpoint/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_single.dir/test_single/test_single.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_single.dir/test_single/test_single.cpp.o -c /home/apaaris/eth/comp/serie0/midpoint/test_single/test_single.cpp

CMakeFiles/test_single.dir/test_single/test_single.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_single.dir/test_single/test_single.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/apaaris/eth/comp/serie0/midpoint/test_single/test_single.cpp > CMakeFiles/test_single.dir/test_single/test_single.cpp.i

CMakeFiles/test_single.dir/test_single/test_single.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_single.dir/test_single/test_single.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/apaaris/eth/comp/serie0/midpoint/test_single/test_single.cpp -o CMakeFiles/test_single.dir/test_single/test_single.cpp.s

# Object files for target test_single
test_single_OBJECTS = \
"CMakeFiles/test_single.dir/test_single/test_single.cpp.o"

# External object files for target test_single
test_single_EXTERNAL_OBJECTS =

test_single: CMakeFiles/test_single.dir/test_single/test_single.cpp.o
test_single: CMakeFiles/test_single.dir/build.make
test_single: libmidpoint.a
test_single: CMakeFiles/test_single.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/apaaris/eth/comp/serie0/midpoint/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_single"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_single.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_single.dir/build: test_single

.PHONY : CMakeFiles/test_single.dir/build

CMakeFiles/test_single.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_single.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_single.dir/clean

CMakeFiles/test_single.dir/depend:
	cd /home/apaaris/eth/comp/serie0/midpoint/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/apaaris/eth/comp/serie0/midpoint /home/apaaris/eth/comp/serie0/midpoint /home/apaaris/eth/comp/serie0/midpoint/build /home/apaaris/eth/comp/serie0/midpoint/build /home/apaaris/eth/comp/serie0/midpoint/build/CMakeFiles/test_single.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_single.dir/depend
