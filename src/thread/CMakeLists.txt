# cmake 的最低版本号
cmake_minimum_required (VERSION 3.6)
list(APPEND ALL_SRC_SOURCES
    ${CMAKE_CURRENT_LIST_DIR}/thread.h
    ${CMAKE_CURRENT_LIST_DIR}/thread.cpp
    ${CMAKE_CURRENT_LIST_DIR}/threadpool.h
    ${CMAKE_CURRENT_LIST_DIR}/threadpool.cpp
    ${CMAKE_CURRENT_LIST_DIR}/threadlock.h
    ${CMAKE_CURRENT_LIST_DIR}/threadlock.cpp
    ${CMAKE_CURRENT_LIST_DIR}/threadevent.h
    ${CMAKE_CURRENT_LIST_DIR}/threadevent.cpp
    ${CMAKE_CURRENT_LIST_DIR}/thread-interface.cpp
    ${CMAKE_CURRENT_LIST_DIR}/threadpool-interface.cpp
)


