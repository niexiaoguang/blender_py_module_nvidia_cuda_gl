#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "OpenColorIO" for configuration "Release"
set_property(TARGET OpenColorIO APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(OpenColorIO PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "TINYXML_LIB;YAML_CPP_LIB"
  IMPORTED_LOCATION_RELEASE "/opt/lib/ocio-1.1.0/lib/libOpenColorIO.so.1.1.0"
  IMPORTED_SONAME_RELEASE "libOpenColorIO.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS OpenColorIO )
list(APPEND _IMPORT_CHECK_FILES_FOR_OpenColorIO "/opt/lib/ocio-1.1.0/lib/libOpenColorIO.so.1.1.0" )

# Import target "OpenColorIO_STATIC" for configuration "Release"
set_property(TARGET OpenColorIO_STATIC APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(OpenColorIO_STATIC PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "TINYXML_LIB;YAML_CPP_LIB"
  IMPORTED_LOCATION_RELEASE "/opt/lib/ocio-1.1.0/lib/static/libOpenColorIO.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS OpenColorIO_STATIC )
list(APPEND _IMPORT_CHECK_FILES_FOR_OpenColorIO_STATIC "/opt/lib/ocio-1.1.0/lib/static/libOpenColorIO.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
