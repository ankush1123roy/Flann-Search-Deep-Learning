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

# Utility rule file for ps.

# Include the progress variables for this target.
include doc/CMakeFiles/ps.dir/progress.make

doc/CMakeFiles/ps: LatexOut/manual.ps

LatexOut/manual.ps: LatexOut/manual.dvi
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../LatexOut/manual.ps"
	cd /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc && /usr/bin/cmake -E chdir /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/LatexOut /usr/bin/dvips -Ppdf -G0 -t letter -o manual.ps manual.dvi

LatexOut/manual.dvi: LatexOut/images/cmake-gui.eps
LatexOut/manual.dvi: LatexOut/manual.tex
LatexOut/manual.dvi: LatexOut/references.bib
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../LatexOut/manual.dvi"
	cd /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc && /usr/bin/cmake -E chdir /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/LatexOut /usr/bin/latex -interaction=batchmode manual.tex
	cd /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc && /usr/bin/cmake -E chdir /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/LatexOut /usr/bin/bibtex manual
	cd /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc && /usr/bin/cmake -E chdir /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/LatexOut /usr/bin/latex -interaction=batchmode manual.tex
	cd /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc && /usr/bin/cmake -E chdir /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/LatexOut /usr/bin/latex -interaction=batchmode manual.tex

LatexOut/images/cmake-gui.eps: doc/images/cmake-gui.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../LatexOut/images/cmake-gui.eps"
	cd /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc && /usr/bin/convert /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc/images/cmake-gui.png /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/LatexOut/images/cmake-gui.eps

LatexOut/manual.tex: doc/manual.tex
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../LatexOut/manual.tex"
	cd /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc && /usr/bin/cmake -E copy /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc/manual.tex /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/LatexOut/manual.tex

LatexOut/references.bib: doc/references.bib
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../LatexOut/references.bib"
	cd /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc && /usr/bin/cmake -E copy /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc/references.bib /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/LatexOut/references.bib

ps: doc/CMakeFiles/ps
ps: LatexOut/manual.ps
ps: LatexOut/manual.dvi
ps: LatexOut/images/cmake-gui.eps
ps: LatexOut/manual.tex
ps: LatexOut/references.bib
ps: doc/CMakeFiles/ps.dir/build.make
.PHONY : ps

# Rule to build all files generated by this target.
doc/CMakeFiles/ps.dir/build: ps
.PHONY : doc/CMakeFiles/ps.dir/build

doc/CMakeFiles/ps.dir/clean:
	cd /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc && $(CMAKE_COMMAND) -P CMakeFiles/ps.dir/cmake_clean.cmake
.PHONY : doc/CMakeFiles/ps.dir/clean

doc/CMakeFiles/ps.dir/depend:
	cd /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc /home/ankush/Folder/Tracking/dmp-matlab/flann-1.6.11-src/doc/CMakeFiles/ps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/CMakeFiles/ps.dir/depend

