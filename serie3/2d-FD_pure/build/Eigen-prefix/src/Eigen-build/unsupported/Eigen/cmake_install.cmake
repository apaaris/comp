# Install script for directory: /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen_install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/AdolcForward"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/AlignedVector3"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/ArpackSupport"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/AutoDiff"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/BVH"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/EulerAngles"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/FFT"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/IterativeSolvers"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/KroneckerProduct"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/LevenbergMarquardt"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/MatrixFunctions"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/MoreVectorization"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/MPRealSupport"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/NonLinearOptimization"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/NumericalDiff"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/OpenGLSupport"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/Polynomials"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/Skyline"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/SparseExtra"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/SpecialFunctions"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/Splines"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen-prefix/src/Eigen-build/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()
