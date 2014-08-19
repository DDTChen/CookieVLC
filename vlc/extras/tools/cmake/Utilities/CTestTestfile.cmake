# CMake generated Testfile for 
# Source directory: /home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Utilities
# Build directory: /home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Utilities
# 
# This file includes the relevent testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(CMake.HTML "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/bin/cmake" "-E" "chdir" "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Utilities/xml" "/usr/bin/xmllint" "--valid" "--noout" "--nonet" "--path" "." "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake.html" "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-policies.html" "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-properties.html" "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-variables.html" "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-modules.html" "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-commands.html" "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-compatcommands.html" "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/ctest.html" "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cpack.html")
SUBDIRS(Doxygen)
SUBDIRS(KWStyle)
