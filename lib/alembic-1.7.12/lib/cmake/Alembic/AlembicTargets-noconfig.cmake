#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Alembic::Alembic" for configuration ""
set_property(TARGET Alembic::Alembic APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(Alembic::Alembic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "/opt/lib/openexr/lib/libImath-2_4.so;/opt/lib/openexr/lib/libIlmThread-2_4.so;/opt/lib/openexr/lib/libIex-2_4.so;/opt/lib/openexr/lib/libHalf-2_4.so;-lpthread;-lm"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libAlembic.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS Alembic::Alembic )
list(APPEND _IMPORT_CHECK_FILES_FOR_Alembic::Alembic "${_IMPORT_PREFIX}/lib/libAlembic.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
