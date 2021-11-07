# Install script for directory: /home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen_install")
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
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/Cholesky"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/CholmodSupport"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/Core"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/Dense"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/Eigen"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/Eigenvalues"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/Geometry"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/Householder"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/IterativeLinearSolvers"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/Jacobi"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/LU"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/MetisSupport"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/OrderingMethods"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/PaStiXSupport"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/PardisoSupport"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/QR"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/QtAlignedMalloc"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/SPQRSupport"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/SVD"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/Sparse"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/SparseCholesky"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/SparseCore"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/SparseLU"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/SparseQR"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/StdDeque"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/StdList"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/StdVector"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/SuperLUSupport"
    "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/UmfPackSupport"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "/home/cmea/comp/project1_handout/corona_dirk/build/Eigen/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

