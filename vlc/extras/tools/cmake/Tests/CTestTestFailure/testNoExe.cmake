CMAKE_MINIMUM_REQUIRED(VERSION 2.1)

# Settings:
SET(CTEST_DASHBOARD_ROOT                "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Tests/CTestTest")
SET(CTEST_SITE                          "ubuntu")
SET(CTEST_BUILD_NAME                    "CTestTest-Linux-g++-NoExe")

SET(CTEST_SOURCE_DIRECTORY              "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Tests/CTestTestFailure")
SET(CTEST_BINARY_DIRECTORY              "/home/ddt/Documents/VLC0924/android/vlc/extras/tools/cmake/Tests/CTestTestFailure")
SET(CTEST_CVS_COMMAND                   "CVSCOMMAND-NOTFOUND")
SET(CTEST_CMAKE_GENERATOR               "Unix Makefiles")
SET(CTEST_BUILD_CONFIGURATION           "$ENV{CMAKE_CONFIG_TYPE}")
SET(CTEST_COVERAGE_COMMAND              "/usr/bin/gcov")
SET(CTEST_NOTES_FILES                   "${CTEST_SCRIPT_DIRECTORY}/${CTEST_SCRIPT_NAME}")

#CTEST_EMPTY_BINARY_DIRECTORY(${CTEST_BINARY_DIRECTORY})

CTEST_START(Experimental)
CTEST_TEST(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)