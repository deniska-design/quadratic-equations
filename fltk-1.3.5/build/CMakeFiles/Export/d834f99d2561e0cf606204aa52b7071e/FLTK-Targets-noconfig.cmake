#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "fltk_z" for configuration ""
set_property(TARGET fltk_z APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(fltk_z PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libfltk_z.a"
  )

list(APPEND _cmake_import_check_targets fltk_z )
list(APPEND _cmake_import_check_files_for_fltk_z "${_IMPORT_PREFIX}/lib/libfltk_z.a" )

# Import target "fltk_jpeg" for configuration ""
set_property(TARGET fltk_jpeg APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(fltk_jpeg PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libfltk_jpeg.a"
  )

list(APPEND _cmake_import_check_targets fltk_jpeg )
list(APPEND _cmake_import_check_files_for_fltk_jpeg "${_IMPORT_PREFIX}/lib/libfltk_jpeg.a" )

# Import target "fltk_png" for configuration ""
set_property(TARGET fltk_png APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(fltk_png PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "fltk_z"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libfltk_png.a"
  )

list(APPEND _cmake_import_check_targets fltk_png )
list(APPEND _cmake_import_check_files_for_fltk_png "${_IMPORT_PREFIX}/lib/libfltk_png.a" )

# Import target "fluid" for configuration ""
set_property(TARGET fluid APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(fluid PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/bin/fluid"
  )

list(APPEND _cmake_import_check_targets fluid )
list(APPEND _cmake_import_check_files_for_fluid "${_IMPORT_PREFIX}/bin/fluid" )

# Import target "fltk" for configuration ""
set_property(TARGET fltk APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(fltk PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C;CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "/usr/lib/x86_64-linux-gnu/libdl.a;/usr/lib/x86_64-linux-gnu/libX11.so"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libfltk.a"
  )

list(APPEND _cmake_import_check_targets fltk )
list(APPEND _cmake_import_check_files_for_fltk "${_IMPORT_PREFIX}/lib/libfltk.a" )

# Import target "fltk_forms" for configuration ""
set_property(TARGET fltk_forms APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(fltk_forms PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "fltk"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libfltk_forms.a"
  )

list(APPEND _cmake_import_check_targets fltk_forms )
list(APPEND _cmake_import_check_files_for_fltk_forms "${_IMPORT_PREFIX}/lib/libfltk_forms.a" )

# Import target "fltk_images" for configuration ""
set_property(TARGET fltk_images APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(fltk_images PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "fltk;fltk_jpeg;fltk_z;fltk_png"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libfltk_images.a"
  )

list(APPEND _cmake_import_check_targets fltk_images )
list(APPEND _cmake_import_check_files_for_fltk_images "${_IMPORT_PREFIX}/lib/libfltk_images.a" )

# Import target "fltk_gl" for configuration ""
set_property(TARGET fltk_gl APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(fltk_gl PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "fltk;/usr/lib/x86_64-linux-gnu/libGL.so;/usr/lib/x86_64-linux-gnu/libGLU.so"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libfltk_gl.a"
  )

list(APPEND _cmake_import_check_targets fltk_gl )
list(APPEND _cmake_import_check_files_for_fltk_gl "${_IMPORT_PREFIX}/lib/libfltk_gl.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
