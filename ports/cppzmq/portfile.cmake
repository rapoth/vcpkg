#header-only library
include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO zeromq/cppzmq
    REF v4.2.2
    SHA512 5f61ea4a16987c1363c3029cf46b3e83ddd86d65e8d639b0332d691f8fdb5cee121b5d72a9b8c89221daf52ea5892219e0bc4ea4e761bb1e7deb1659011dd3c9
    HEAD_REF master
)

# cppzmq is a single header library, so we just need to copy that file in the include directory
file(INSTALL ${SOURCE_PATH}/zmq.hpp DESTINATION ${CURRENT_PACKAGES_DIR}/include)
file(INSTALL ${SOURCE_PATH}/zmq_addon.hpp DESTINATION ${CURRENT_PACKAGES_DIR}/include)

# Handle copyright
file(COPY ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/cppzmq)
file(RENAME ${CURRENT_PACKAGES_DIR}/share/cppzmq/LICENSE ${CURRENT_PACKAGES_DIR}/share/cppzmq/copyright)
