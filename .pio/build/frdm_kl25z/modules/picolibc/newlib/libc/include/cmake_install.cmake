# Install script for directory: /Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Users/anitapereira/.platformio/packages/toolchain-gccarmnoneeabi/bin/arm-none-eabi-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/anitapereira/atividade-comunica-o-2-tradicionais/.pio/build/frdm_kl25z/modules/picolibc/newlib/libc/include/sys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/anitapereira/atividade-comunica-o-2-tradicionais/.pio/build/frdm_kl25z/modules/picolibc/newlib/libc/include/machine/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/anitapereira/atividade-comunica-o-2-tradicionais/.pio/build/frdm_kl25z/modules/picolibc/newlib/libc/include/ssp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/anitapereira/atividade-comunica-o-2-tradicionais/.pio/build/frdm_kl25z/modules/picolibc/newlib/libc/include/rpc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/anitapereira/atividade-comunica-o-2-tradicionais/.pio/build/frdm_kl25z/modules/picolibc/newlib/libc/include/arpa/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/alloca.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/argz.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/ar.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/assert.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/byteswap.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/cpio.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/ctype.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/devctl.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/dirent.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/endian.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/envlock.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/envz.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/errno.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/fastmath.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/fcntl.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/fenv.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/fnmatch.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/getopt.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/glob.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/grp.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/iconv.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/ieeefp.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/inttypes.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/langinfo.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/libgen.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/limits.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/locale.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/malloc.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/math.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/memory.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/ndbm.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/newlib.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/paths.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/picotls.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/pwd.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/regdef.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/regex.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/sched.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/search.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/setjmp.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/signal.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/spawn.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/stdint.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/stdnoreturn.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/stdlib.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/string.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/strings.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/tar.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/termios.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/time.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/uchar.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/unctrl.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/unistd.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/utime.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/utmp.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/wchar.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/wctype.h"
    "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/wordexp.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/Users/anitapereira/.platformio/packages/framework-zephyr/_pio/modules/lib/picolibc/newlib/libc/include/complex.h")
endif()

