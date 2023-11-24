# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\myPlayer_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\myPlayer_autogen.dir\\ParseCache.txt"
  "myPlayer_autogen"
  )
endif()
