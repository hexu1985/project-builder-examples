add_library(calc STATIC basic.cpp)
target_sources(calc
  PUBLIC FILE_SET HEADERS BASE_DIRS include
  FILES "include/calc/basic.h"
)

set_target_properties(calc PROPERTIES CXX_EXTENSIONS OFF)

export(TARGETS calc
       FILE "${CMAKE_BINARY_DIR}/cmake/CalcTargets.cmake"
       CXX_MODULES_DIRECTORY "modules"
       NAMESPACE Calc::
)

