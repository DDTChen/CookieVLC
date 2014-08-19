if (NOT EXISTS "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/install_manifest.txt")
  message(FATAL_ERROR "Cannot find install manifest: \"/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/install_manifest.txt\"")
endif()

file(READ "/home/ddt/Documents/VLC0924/android/vlc/contrib/android/taglib/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach (file ${files})
  message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
  if (EXISTS "$ENV{DESTDIR}${file}")
    execute_process(
      COMMAND /home/ddt/Documents/VLC0924/android/vlc/extras/tools/build/bin/cmake -E remove "$ENV{DESTDIR}${file}"
      OUTPUT_VARIABLE rm_out
      RESULT_VARIABLE rm_retval
    )
    if(NOT ${rm_retval} EQUAL 0)
      message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
    endif ()
  else ()
    message(STATUS "File \"$ENV{DESTDIR}${file}\" does not exist.")
  endif ()
endforeach()
