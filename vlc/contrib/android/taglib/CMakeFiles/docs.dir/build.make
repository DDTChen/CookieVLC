# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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
CMAKE_COMMAND = /home/ddt/Documents/VLC0924/android/vlc/extras/tools/build/bin/cmake

# The command to remove a file.
RM = /home/ddt/Documents/VLC0924/android/vlc/extras/tools/build/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib

# Utility rule file for docs.

CMakeFiles/docs:
	doxygen

docs: CMakeFiles/docs
docs: CMakeFiles/docs.dir/build.make
.PHONY : docs

# Rule to build all files generated by this target.
CMakeFiles/docs.dir/build: docs
.PHONY : CMakeFiles/docs.dir/build

CMakeFiles/docs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/docs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/docs.dir/clean

CMakeFiles/docs.dir/depend:
	cd /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/CMakeFiles/docs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/docs.dir/depend
