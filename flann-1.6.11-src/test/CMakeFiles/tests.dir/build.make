# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src

# Utility rule file for tests.

# Include the progress variables for this target.
include test/CMakeFiles/tests.dir/progress.make

test/CMakeFiles/tests:

tests: test/CMakeFiles/tests
tests: test/CMakeFiles/tests.dir/build.make
.PHONY : tests

# Rule to build all files generated by this target.
test/CMakeFiles/tests.dir/build: tests
.PHONY : test/CMakeFiles/tests.dir/build

test/CMakeFiles/tests.dir/clean:
	cd /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/test && $(CMAKE_COMMAND) -P CMakeFiles/tests.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/tests.dir/clean

test/CMakeFiles/tests.dir/depend:
	cd /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/test /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/test /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/test/CMakeFiles/tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/tests.dir/depend

