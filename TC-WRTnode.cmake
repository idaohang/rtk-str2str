# the name of the target operating system, tell cmake we are doing cross compiling
set (CMAKE_SYSTEM_NAME Linux)
#include (CMakeForceCompiler)
set (CMAKE_SYSTEM_PROCESSOR mipsel)

# Set compiler
set (CMAKE_C_COMPILER mipsel-openwrt-linux-gcc)
set (CMAKE_CXX_COMPILER mipsel-openwrt-linux-g++)

# for the gcc-4.8 official toolchain of WRTnode, it is not able to compile a simple program, so it should be forced
#include (CMakeForceCompiler)
#CMAKE_FORCE_C_COMPILER (mipsel-openwrt-linux-gcc GNU)
#CMAKE_FORCE_CXX_COMPILER (mipsel-openwrt-linux-g++ GNU)

# Set the path where to find libs and headers
set (CMAKE_FIND_ROOT_PATH ${STAGING_DIR})

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# include staging_dir/target-architecture-uclibc-libcver/usr/include
# to search for the header files for OpenWRT
# Note: STAGING_DIR is the root path of OpenWRT toolchain
#include_directories(${STAGING_DIR}/target-mipsel_r2_uClibc-0.9.33.2/usr/include)
#include_directories (${STAGING_DIR}/toolchain-mipsel_24kec+dsp_gcc-4.8-linaro_uClibc-0.9.33.2/include)

# add staging_dir/target-architecture-uclibc-libcver/usr/lib
# to search for the shared objects for OpenWRT
#link_directories(${STAGING_DIR}/target-mipsel_r2_uClibc-0.9.33.2/usr/lib)
#link_directories (${STAGING_DIR}/toolchain-mipsel_24kec+dsp_gcc-4.8-linaro_uClibc-0.9.33.2/lib)
