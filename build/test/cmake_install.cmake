# Install script for directory: E:/GitCode/Vigra_Test/vigra-1.10.0/test

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "E:/GitCode/Vigra_Test/install")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("E:/GitCode/Vigra_Test/build/test/error/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/impex/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/utilities/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/pixeltypes/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/colorspaces/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/classifier/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/imgproc/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/functorexpression/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/convolution/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/morphology/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/fourier/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/math/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/optimization/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/tensorimaging/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/simpleanalysis/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/image/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/multiarray/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/multiconvolution/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/voxelneighborhood/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/volumelabeling/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/watersheds3d/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/multidistance/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/multimorphology/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/seededRegionGrowing3d/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/sampler/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/hdf5impex/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/sifImport/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/features/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/unsupervised/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/coordinateiterator/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/objectfeatures/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/slic2d/cmake_install.cmake")
  include("E:/GitCode/Vigra_Test/build/test/gridgraph/cmake_install.cmake")

endif()

