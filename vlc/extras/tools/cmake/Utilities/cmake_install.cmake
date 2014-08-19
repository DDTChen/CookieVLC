# Install script for directory: /home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Utilities

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/build")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/man/man1" TYPE FILE FILES
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake.1"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmakecommands.1"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmakecompat.1"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmakeprops.1"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmakepolicies.1"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmakevars.1"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmakemodules.1"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/ctest.1"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cpack.1"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/doc/cmake-2.8" TYPE FILE FILES
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake.html"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-policies.html"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-properties.html"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-variables.html"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-modules.html"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-commands.html"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-compatcommands.html"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/ctest.html"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cpack.html"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake.txt"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake.docbook"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-policies.txt"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-properties.txt"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-variables.txt"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-modules.txt"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-commands.txt"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cmake-compatcommands.txt"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/ctest.txt"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/ctest.docbook"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cpack.txt"
    "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Docs/cpack.docbook"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Utilities/cmake.m4")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Utilities/Doxygen/cmake_install.cmake")
  INCLUDE("/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Utilities/KWStyle/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

