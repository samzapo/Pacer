get_filename_component(TEST_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
set(TEST_BIN_NAME ${TEST_NAME}.test)

# this is the directory, from which cmake was started, i.e. the top level source directory 
MESSAGE( STATUS "CMAKE_BUILD_TYPE:         " ${CMAKE_BUILD_TYPE} )

add_executable(${TEST_BIN_NAME} main.cpp)
if(${USE_GTEST})
  add_definitions(-DUSE_GTEST)
  target_link_libraries(${TEST_BIN_NAME} MobyDriver Moby Pacer gtest_main gtest)
else()
  target_link_libraries(${TEST_BIN_NAME} MobyDriver Moby Pacer)
endif()

get_filename_component(DIR_NAME ${CMAKE_CURRENT_SOURCE_DIR} DIRECTORY)
add_test(NAME ${TEST_BIN_NAME} COMMAND ${CMAKE_CURRENT_BINARY_DIR}/${TEST_BIN_NAME} WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/Example/Demo/${DIR_NAME})
add_dependencies(regression-test ${TEST_BIN_NAME})
