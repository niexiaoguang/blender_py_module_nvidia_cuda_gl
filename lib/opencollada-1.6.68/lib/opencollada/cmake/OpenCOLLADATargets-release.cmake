#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ftoa_static" for configuration "Release"
set_property(TARGET ftoa_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ftoa_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "/opt/lib/opencollada-1.6.68/lib/opencollada/libftoa.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ftoa_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_ftoa_static "/opt/lib/opencollada-1.6.68/lib/opencollada/libftoa.a" )

# Import target "UTF_static" for configuration "Release"
set_property(TARGET UTF_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(UTF_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "/opt/lib/opencollada-1.6.68/lib/opencollada/libUTF.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS UTF_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_UTF_static "/opt/lib/opencollada-1.6.68/lib/opencollada/libUTF.a" )

# Import target "buffer_static" for configuration "Release"
set_property(TARGET buffer_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(buffer_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ftoa_static;UTF_static"
  IMPORTED_LOCATION_RELEASE "/opt/lib/opencollada-1.6.68/lib/opencollada/libbuffer.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS buffer_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_buffer_static "/opt/lib/opencollada-1.6.68/lib/opencollada/libbuffer.a" )

# Import target "MathMLSolver_static" for configuration "Release"
set_property(TARGET MathMLSolver_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(MathMLSolver_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "/opt/lib/opencollada-1.6.68/lib/opencollada/libMathMLSolver.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS MathMLSolver_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_MathMLSolver_static "/opt/lib/opencollada-1.6.68/lib/opencollada/libMathMLSolver.a" )

# Import target "zlib_static" for configuration "Release"
set_property(TARGET zlib_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(zlib_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "/opt/lib/opencollada-1.6.68/lib/opencollada/libzlib.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS zlib_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_zlib_static "/opt/lib/opencollada-1.6.68/lib/opencollada/libzlib.a" )

# Import target "OpenCOLLADABaseUtils_static" for configuration "Release"
set_property(TARGET OpenCOLLADABaseUtils_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(OpenCOLLADABaseUtils_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "UTF_static;/usr/lib/x86_64-linux-gnu/libpcre.so;/usr/lib/x86_64-linux-gnu/libpcreposix.so"
  IMPORTED_LOCATION_RELEASE "/opt/lib/opencollada-1.6.68/lib/opencollada/libOpenCOLLADABaseUtils.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS OpenCOLLADABaseUtils_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_OpenCOLLADABaseUtils_static "/opt/lib/opencollada-1.6.68/lib/opencollada/libOpenCOLLADABaseUtils.a" )

# Import target "OpenCOLLADAFramework_static" for configuration "Release"
set_property(TARGET OpenCOLLADAFramework_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(OpenCOLLADAFramework_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "OpenCOLLADABaseUtils_static;MathMLSolver_static"
  IMPORTED_LOCATION_RELEASE "/opt/lib/opencollada-1.6.68/lib/opencollada/libOpenCOLLADAFramework.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS OpenCOLLADAFramework_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_OpenCOLLADAFramework_static "/opt/lib/opencollada-1.6.68/lib/opencollada/libOpenCOLLADAFramework.a" )

# Import target "GeneratedSaxParser_static" for configuration "Release"
set_property(TARGET GeneratedSaxParser_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(GeneratedSaxParser_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "OpenCOLLADABaseUtils_static;/usr/lib/x86_64-linux-gnu/libxml2.so"
  IMPORTED_LOCATION_RELEASE "/opt/lib/opencollada-1.6.68/lib/opencollada/libGeneratedSaxParser.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS GeneratedSaxParser_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_GeneratedSaxParser_static "/opt/lib/opencollada-1.6.68/lib/opencollada/libGeneratedSaxParser.a" )

# Import target "OpenCOLLADASaxFrameworkLoader_static" for configuration "Release"
set_property(TARGET OpenCOLLADASaxFrameworkLoader_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(OpenCOLLADASaxFrameworkLoader_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "OpenCOLLADABaseUtils_static;GeneratedSaxParser_static;OpenCOLLADAFramework_static;MathMLSolver_static;/usr/lib/x86_64-linux-gnu/libpcre.so;/usr/lib/x86_64-linux-gnu/libpcreposix.so;/usr/lib/x86_64-linux-gnu/libxml2.so"
  IMPORTED_LOCATION_RELEASE "/opt/lib/opencollada-1.6.68/lib/opencollada/libOpenCOLLADASaxFrameworkLoader.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS OpenCOLLADASaxFrameworkLoader_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_OpenCOLLADASaxFrameworkLoader_static "/opt/lib/opencollada-1.6.68/lib/opencollada/libOpenCOLLADASaxFrameworkLoader.a" )

# Import target "OpenCOLLADAStreamWriter_static" for configuration "Release"
set_property(TARGET OpenCOLLADAStreamWriter_static APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(OpenCOLLADAStreamWriter_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "OpenCOLLADABaseUtils_static;buffer_static;ftoa_static"
  IMPORTED_LOCATION_RELEASE "/opt/lib/opencollada-1.6.68/lib/opencollada/libOpenCOLLADAStreamWriter.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS OpenCOLLADAStreamWriter_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_OpenCOLLADAStreamWriter_static "/opt/lib/opencollada-1.6.68/lib/opencollada/libOpenCOLLADAStreamWriter.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
