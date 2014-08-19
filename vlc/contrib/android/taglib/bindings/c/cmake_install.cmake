# Install script for directory: /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi")
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
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/lib/libtag_c.a")
FILE(INSTALL DESTINATION "/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/lib" TYPE STATIC_LIBRARY FILES "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c/libtag_c.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tag_c.h")
FILE(INSTALL DESTINATION "/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib" TYPE FILE FILES "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c/tag_c.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/lib/pkgconfig/taglib_c.pc")
FILE(INSTALL DESTINATION "/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/lib/pkgconfig" TYPE FILE FILES "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/bindings/c/taglib_c.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

