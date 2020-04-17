
    get_filename_component(OpenColorIO_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
    
    ## include
    set(OpenColorIO_INCLUDE_DIR     "${OpenColorIO_DIR}/include")
    set(OpenColorIO_INCLUDE_DIRS    "${OpenColorIO_INCLUDE_DIR}")
    message(STATUS OpenColorIO_INCLUDE_DIRS=${OpenColorIO_INCLUDE_DIRS})
    
    ## targets libraries + associated definitions
    if(NOT TARGET OpenColorIO)
        include("${OpenColorIO_DIR}/cmake/OpenColorIO.cmake") ## thanks to imported target
        if(TARGET OpenColorIO AND NOT OpenColorIO_USE_STATIC)
            message(STATUS "shared target OpenColorIO : see OpenColorIO_LIBRARY")
            set(OpenColorIO_LIBRARY         OpenColorIO)
            set(OCIO_COMPILE_DEFINITIONS    USE_SSE)
        endif()
        if(NOT TARGET OpenColorIO AND TARGET OpenColorIO_STATIC)
            message(STATUS "static target OpenColorIO_STATIC : see OpenColorIO_LIBRARY")
            set(OpenColorIO_LIBRARY         OpenColorIO_STATIC)
            set(OCIO_COMPILE_DEFINITIONS    OpenColorIO_STATIC;USE_SSE)
        elseif(TARGET OpenColorIO_STATIC AND OpenColorIO_USE_STATIC)
            message(STATUS "static target OpenColorIO_STATIC : see OpenColorIO_LIBRARY")
            set(OpenColorIO_LIBRARY OpenColorIO_STATIC)
            set(OCIO_COMPILE_DEFINITIONS    OpenColorIO_STATIC;USE_SSE)
        endif()
    endif()
    set(OpenColorIO_LIBRARIES ${OpenColorIO_LIBRARY})
    message(STATUS OpenColorIO_LIBRARIES=${OpenColorIO_LIBRARIES})
    
    ## display available preprocessor definition to use
    if(OCIO_COMPILE_DEFINITIONS)
        message(STATUS "OCIO_COMPILE_DEFINITIONS=")
        foreach(OCIO_DEF ${OCIO_COMPILE_DEFINITIONS})
            message(STATUS "   ${OCIO_DEF}")
        endforeach()
    endif()
    
    ## found
    if(OpenColorIO_INCLUDE_DIRS AND OpenColorIO_LIBRARIES)
        set(OpenColorIO_FOUND ON)
        set(OPENCOLORIO_FOUND ON)
    else()
        set(OpenColorIO_FOUND OFF)
        set(OPENCOLORIO_FOUND OFF)
    endif()
    message(STATUS OPENCOLORIO_FOUND=${OPENCOLORIO_FOUND})
    