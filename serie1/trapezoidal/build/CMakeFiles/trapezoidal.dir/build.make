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
CMAKE_SOURCE_DIR = /home/apaaris/eth/comp/serie1/trapezoidal

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/apaaris/eth/comp/serie1/trapezoidal/build

# Include any dependencies generated for this target.
include CMakeFiles/trapezoidal.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/trapezoidal.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/trapezoidal.dir/flags.make

CMakeFiles/trapezoidal.dir/trapezoidal.cpp.o: CMakeFiles/trapezoidal.dir/flags.make
CMakeFiles/trapezoidal.dir/trapezoidal.cpp.o: ../trapezoidal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/apaaris/eth/comp/serie1/trapezoidal/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/trapezoidal.dir/trapezoidal.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/trapezoidal.dir/trapezoidal.cpp.o -c /home/apaaris/eth/comp/serie1/trapezoidal/trapezoidal.cpp

CMakeFiles/trapezoidal.dir/trapezoidal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trapezoidal.dir/trapezoidal.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/apaaris/eth/comp/serie1/trapezoidal/trapezoidal.cpp > CMakeFiles/trapezoidal.dir/trapezoidal.cpp.i

CMakeFiles/trapezoidal.dir/trapezoidal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trapezoidal.dir/trapezoidal.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/apaaris/eth/comp/serie1/trapezoidal/trapezoidal.cpp -o CMakeFiles/trapezoidal.dir/trapezoidal.cpp.s

# Object files for target trapezoidal
trapezoidal_OBJECTS = \
"CMakeFiles/trapezoidal.dir/trapezoidal.cpp.o"

# External object files for target trapezoidal
trapezoidal_EXTERNAL_OBJECTS =

trapezoidal: CMakeFiles/trapezoidal.dir/trapezoidal.cpp.o
trapezoidal: CMakeFiles/trapezoidal.dir/build.make
trapezoidal: CMakeFiles/trapezoidal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/apaaris/eth/comp/serie1/trapezoidal/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable trapezoidal"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/trapezoidal.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/trapezoidal.dir/build: trapezoidal

.PHONY : CMakeFiles/trapezoidal.dir/build

CMakeFiles/trapezoidal.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/trapezoidal.dir/cmake_clean.cmake
.PHONY : CMakeFiles/trapezoidal.dir/clean

CMakeFiles/trapezoidal.dir/depend:
	cd /home/apaaris/eth/comp/serie1/trapezoidal/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/apaaris/eth/comp/serie1/trapezoidal /home/apaaris/eth/comp/serie1/trapezoidal /home/apaaris/eth/comp/serie1/trapezoidal/build /home/apaaris/eth/comp/serie1/trapezoidal/build /home/apaaris/eth/comp/serie1/trapezoidal/build/CMakeFiles/trapezoidal.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/trapezoidal.dir/depend

