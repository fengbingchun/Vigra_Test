#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "vigraimpex" for configuration "Debug"
set_property(TARGET vigraimpex APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(vigraimpex PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/vigraimpex.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/vigraimpex.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS vigraimpex )
list(APPEND _IMPORT_CHECK_FILES_FOR_vigraimpex "${_IMPORT_PREFIX}/lib/vigraimpex.lib" "${_IMPORT_PREFIX}/bin/vigraimpex.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
