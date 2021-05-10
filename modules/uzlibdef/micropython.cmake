# Create an INTERFACE library for our C module.
add_library(usermod_uzlibdef INTERFACE)

# Add our source files to the lib
target_sources(usermod_uzlibdef INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/moduzlibdef.c
    ${CMAKE_CURRENT_LIST_DIR}/defl_static.c
    ${CMAKE_CURRENT_LIST_DIR}/genlz77.c
)

# Add the current directory as an include directory.
target_include_directories(usermod_uzlibdef INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}
)

# Link our INTERFACE library to the usermod target.
target_link_libraries(usermod INTERFACE usermod_uzlibdef)