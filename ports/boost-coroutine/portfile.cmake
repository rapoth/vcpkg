# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/coroutine
    REF boost-1.65.1
    SHA512 ce069dff7dc8abc6f0974960d43ffb92e6fee9baa636fae75aa7440a402efd1bb4989104dea00c018d91c3e7463b821988ed4d25061d3419d73c313d56800480
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular.cmake)

boost_modular(
    SOURCE_PATH ${SOURCE_PATH}
    
)
