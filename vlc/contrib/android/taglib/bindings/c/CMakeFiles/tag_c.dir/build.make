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

# Include any dependencies generated for this target.
include bindings/c/CMakeFiles/tag_c.dir/depend.make

# Include the progress variables for this target.
include bindings/c/CMakeFiles/tag_c.dir/progress.make

# Include the compile flags for this target's objects.
include bindings/c/CMakeFiles/tag_c.dir/flags.make

bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o: bindings/c/CMakeFiles/tag_c.dir/flags.make
bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o: bindings/c/tag_c.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o"
	cd /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c && /home/ddt/Documents/android-sdk/android-ndk-r9/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin/arm-linux-androideabi-g++ --sysroot=/home/ddt/Documents/android-sdk/android-ndk-r9/platforms/android-9/arch-arm  $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tag_c.dir/tag_c.cpp.o -c /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c/tag_c.cpp

bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tag_c.dir/tag_c.cpp.i"
	cd /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c && /home/ddt/Documents/android-sdk/android-ndk-r9/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin/arm-linux-androideabi-g++ --sysroot=/home/ddt/Documents/android-sdk/android-ndk-r9/platforms/android-9/arch-arm $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c/tag_c.cpp > CMakeFiles/tag_c.dir/tag_c.cpp.i

bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tag_c.dir/tag_c.cpp.s"
	cd /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c && /home/ddt/Documents/android-sdk/android-ndk-r9/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin/arm-linux-androideabi-g++ --sysroot=/home/ddt/Documents/android-sdk/android-ndk-r9/platforms/android-9/arch-arm $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c/tag_c.cpp -o CMakeFiles/tag_c.dir/tag_c.cpp.s

bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.requires:
.PHONY : bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.requires

bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.provides: bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.requires
	$(MAKE) -f bindings/c/CMakeFiles/tag_c.dir/build.make bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.provides.build
.PHONY : bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.provides

bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.provides.build: bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o

# Object files for target tag_c
tag_c_OBJECTS = \
"CMakeFiles/tag_c.dir/tag_c.cpp.o"

# External object files for target tag_c
tag_c_EXTERNAL_OBJECTS =

bindings/c/libtag_c.a: bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o
bindings/c/libtag_c.a: bindings/c/CMakeFiles/tag_c.dir/build.make
bindings/c/libtag_c.a: bindings/c/CMakeFiles/tag_c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libtag_c.a"
	cd /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c && $(CMAKE_COMMAND) -P CMakeFiles/tag_c.dir/cmake_clean_target.cmake
	cd /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tag_c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bindings/c/CMakeFiles/tag_c.dir/build: bindings/c/libtag_c.a
.PHONY : bindings/c/CMakeFiles/tag_c.dir/build

bindings/c/CMakeFiles/tag_c.dir/requires: bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.requires
.PHONY : bindings/c/CMakeFiles/tag_c.dir/requires

bindings/c/CMakeFiles/tag_c.dir/clean:
	cd /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c && $(CMAKE_COMMAND) -P CMakeFiles/tag_c.dir/cmake_clean.cmake
.PHONY : bindings/c/CMakeFiles/tag_c.dir/clean

bindings/c/CMakeFiles/tag_c.dir/depend:
	cd /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c/CMakeFiles/tag_c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bindings/c/CMakeFiles/tag_c.dir/depend
