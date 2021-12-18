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
include blas/testing/CMakeFiles/zblat3.dir/depend.make

# Include the progress variables for this target.
include blas/testing/CMakeFiles/zblat3.dir/progress.make

# Include the compile flags for this target's objects.
include blas/testing/CMakeFiles/zblat3.dir/flags.make

blas/testing/CMakeFiles/zblat3.dir/zblat3.f.o: blas/testing/CMakeFiles/zblat3.dir/flags.make
blas/testing/CMakeFiles/zblat3.dir/zblat3.f.o: /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/blas/testing/zblat3.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object blas/testing/CMakeFiles/zblat3.dir/zblat3.f.o"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/blas/testing && /usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/blas/testing/zblat3.f -o CMakeFiles/zblat3.dir/zblat3.f.o

blas/testing/CMakeFiles/zblat3.dir/zblat3.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/zblat3.dir/zblat3.f.i"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/blas/testing && /usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/blas/testing/zblat3.f > CMakeFiles/zblat3.dir/zblat3.f.i

blas/testing/CMakeFiles/zblat3.dir/zblat3.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/zblat3.dir/zblat3.f.s"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/blas/testing && /usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/blas/testing/zblat3.f -o CMakeFiles/zblat3.dir/zblat3.f.s

# Object files for target zblat3
zblat3_OBJECTS = \
"CMakeFiles/zblat3.dir/zblat3.f.o"

# External object files for target zblat3
zblat3_EXTERNAL_OBJECTS =

blas/testing/zblat3: blas/testing/CMakeFiles/zblat3.dir/zblat3.f.o
blas/testing/zblat3: blas/testing/CMakeFiles/zblat3.dir/build.make
blas/testing/zblat3: blas/libeigen_blas.so
blas/testing/zblat3: blas/testing/CMakeFiles/zblat3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking Fortran executable zblat3"
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/blas/testing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zblat3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
blas/testing/CMakeFiles/zblat3.dir/build: blas/testing/zblat3

.PHONY : blas/testing/CMakeFiles/zblat3.dir/build

blas/testing/CMakeFiles/zblat3.dir/clean:
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/blas/testing && $(CMAKE_COMMAND) -P CMakeFiles/zblat3.dir/cmake_clean.cmake
.PHONY : blas/testing/CMakeFiles/zblat3.dir/clean

blas/testing/CMakeFiles/zblat3.dir/depend:
	cd /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/blas/testing /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/blas/testing /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/blas/testing/CMakeFiles/zblat3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : blas/testing/CMakeFiles/zblat3.dir/depend

