# Install script for directory: /home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib

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
   "/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/lib/libtag.a")
FILE(INSTALL DESTINATION "/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/lib" TYPE STATIC_LIBRARY FILES "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/libtag.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tag.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/fileref.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/audioproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/taglib_export.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/taglib_config.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/taglib.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tstring.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tlist.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tlist.tcc;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tstringlist.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tbytevector.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tbytevectorlist.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tbytevectorstream.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tiostream.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tfilestream.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tmap.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tmap.tcc;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/tpropertymap.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/mpegfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/mpegproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/mpegheader.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/xingheader.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/id3v1tag.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/id3v1genres.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/id3v2extendedheader.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/id3v2frame.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/id3v2header.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/id3v2synchdata.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/id3v2footer.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/id3v2framefactory.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/id3v2tag.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/attachedpictureframe.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/commentsframe.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/generalencapsulatedobjectframe.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/ownershipframe.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/popularimeterframe.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/privateframe.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/relativevolumeframe.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/textidentificationframe.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/uniquefileidentifierframe.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/unknownframe.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/unsynchronizedlyricsframe.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/urllinkframe.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/oggfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/oggpage.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/oggpageheader.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/xiphcomment.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/vorbisfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/vorbisproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/oggflacfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/speexfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/speexproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/flacfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/flacpicture.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/flacproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/flacmetadatablock.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/apefile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/apeproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/apetag.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/apefooter.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/apeitem.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/mpcfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/mpcproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/wavpackfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/wavpackproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/trueaudiofile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/trueaudioproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/rifffile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/aifffile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/aiffproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/wavfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/wavproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/asffile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/asfproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/asftag.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/asfattribute.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/asfpicture.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/mp4file.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/mp4atom.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/mp4tag.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/mp4item.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/mp4properties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/mp4coverart.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/modfilebase.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/modfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/modtag.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/modproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/itfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/itproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/s3mfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/s3mproperties.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/xmfile.h;/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib/xmproperties.h")
FILE(INSTALL DESTINATION "/home/ddt/Documents/VLC0924/android/vlc/contrib/arm-linux-androideabi/include/taglib" TYPE FILE FILES
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/tag.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/fileref.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/audioproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/taglib_export.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib_config.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/taglib.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/tstring.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/tlist.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/tlist.tcc"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/tstringlist.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/tbytevector.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/tbytevectorlist.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/tbytevectorstream.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/tiostream.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/tfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/tfilestream.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/tmap.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/tmap.tcc"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/toolkit/tpropertymap.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/mpegfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/mpegproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/mpegheader.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/xingheader.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v1/id3v1tag.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v1/id3v1genres.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/id3v2extendedheader.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/id3v2frame.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/id3v2header.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/id3v2synchdata.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/id3v2footer.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/id3v2framefactory.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/id3v2tag.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/frames/attachedpictureframe.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/frames/commentsframe.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/frames/generalencapsulatedobjectframe.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/frames/ownershipframe.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/frames/popularimeterframe.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/frames/privateframe.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/frames/relativevolumeframe.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/frames/textidentificationframe.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/frames/uniquefileidentifierframe.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/frames/unknownframe.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/frames/unsynchronizedlyricsframe.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpeg/id3v2/frames/urllinkframe.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ogg/oggfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ogg/oggpage.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ogg/oggpageheader.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ogg/xiphcomment.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ogg/vorbis/vorbisfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ogg/vorbis/vorbisproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ogg/flac/oggflacfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ogg/speex/speexfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ogg/speex/speexproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/flac/flacfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/flac/flacpicture.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/flac/flacproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/flac/flacmetadatablock.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ape/apefile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ape/apeproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ape/apetag.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ape/apefooter.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/ape/apeitem.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpc/mpcfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mpc/mpcproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/wavpack/wavpackfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/wavpack/wavpackproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/trueaudio/trueaudiofile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/trueaudio/trueaudioproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/riff/rifffile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/riff/aiff/aifffile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/riff/aiff/aiffproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/riff/wav/wavfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/riff/wav/wavproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/asf/asffile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/asf/asfproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/asf/asftag.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/asf/asfattribute.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/asf/asfpicture.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mp4/mp4file.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mp4/mp4atom.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mp4/mp4tag.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mp4/mp4item.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mp4/mp4properties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mp4/mp4coverart.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mod/modfilebase.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mod/modfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mod/modtag.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/mod/modproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/it/itfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/it/itproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/s3m/s3mfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/s3m/s3mproperties.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/xm/xmfile.h"
    "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/taglib/xm/xmproperties.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

