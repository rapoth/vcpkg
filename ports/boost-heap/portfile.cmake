# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/heap
    REF boost-1.65.1
    SHA512 a8a2e0c7ab5389818fc26ad8533d88e6eb67a17b4200499e5d8c39e496e130a3d72e82c9c9b8c673f26efae299c51c8ee2d3e34094180473e32c11875d6c7229
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular.cmake)

boost_modular(
    SOURCE_PATH ${SOURCE_PATH}
    
)
