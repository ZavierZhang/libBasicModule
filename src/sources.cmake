cmake_minimum_required(VERSION 3.6)
#收集所有源文件

#把include中的头文件加到工程项中
COLLECT_COMPLIE_SOURCE_RECURSE(${CMAKE_CURRENT_LIST_DIR}/../include ALL_SRC_SOURCES)

#thread
include(${CMAKE_CURRENT_LIST_DIR}/thread/CMakeLists.txt)

#tcp

#udp

#http




