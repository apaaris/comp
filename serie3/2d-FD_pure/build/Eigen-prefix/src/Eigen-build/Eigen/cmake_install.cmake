# Install script for directory: /home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/Cholesky"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/CholmodSupport"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/Core"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/Dense"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/Eigen"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/Eigenvalues"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/Geometry"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/Householder"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/IterativeLinearSolvers"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/Jacobi"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/LU"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/MetisSupport"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/OrderingMethods"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/PaStiXSupport"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/PardisoSupport"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/QR"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/QtAlignedMalloc"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/SPQRSupport"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/SVD"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/Sparse"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/SparseCholesky"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/SparseCore"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/SparseLU"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/SparseQR"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/StdDeque"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/StdList"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/StdVector"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/SuperLUSupport"
    "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/UmfPackSupport"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "/home/apaaris/eth/comp/serie3/2d-FD_pure/build/Eigen/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

