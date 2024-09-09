find_path(tomlplusplus_INCLUDE_DIR toml++/toml.h)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(tomlplusplus REQUIRED_VARS tomlplusplus_INCLUDE_DIR)
mark_as_advanced(tomlplusplus_INCLUDE_DIR)

if (tomlplusplus_FOUND)
    if(NOT TARGET tomlplusplus::tomlplusplus)
        add_library(tomlplusplus::tomlplusplus UNKNOWN IMPORTED)
        set_target_properties(tomlplusplus::tomlplusplus PROPERTIES
                              INTERFACE_INCLUDE_DIRECTORIES ${tomlplusplus_INCLUDE_DIR})
    endif()
endif ()
