# CMake generated Testfile for 
# Source directory: /home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake
# Build directory: /home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake
# 
# This file includes the relevent testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
INCLUDE("/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Tests/EnforceConfig.cmake")
ADD_TEST(SystemInformationNew "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/bin/cmake" "--system-information" "-G" "Unix Makefiles")
SUBDIRS(Source/kwsys)
SUBDIRS(Utilities/cmzlib)
SUBDIRS(Utilities/cmcurl)
SUBDIRS(Utilities/cmcompress)
SUBDIRS(Utilities/cmbzip2)
SUBDIRS(Utilities/cmlibarchive)
SUBDIRS(Utilities/cmexpat)
SUBDIRS(Source)
SUBDIRS(Utilities)
SUBDIRS(Tests)
