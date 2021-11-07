# Install script for directory: /home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen_install")
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
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/Cholesky"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/CholmodSupport"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/Core"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/Dense"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/Eigen"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/Eigenvalues"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/Geometry"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/Householder"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/IterativeLinearSolvers"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/Jacobi"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/LU"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/MetisSupport"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/OrderingMethods"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/PaStiXSupport"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/PardisoSupport"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/QR"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/QtAlignedMalloc"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/SPQRSupport"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/SVD"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/Sparse"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/SparseCholesky"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/SparseCore"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/SparseLU"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/SparseQR"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/StdDeque"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/StdList"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/StdVector"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/SuperLUSupport"
    "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/UmfPackSupport"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "/home/apaaris/comp/project1_handout/heun_timestep/build/Eigen/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

