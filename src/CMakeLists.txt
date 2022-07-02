# cmake 的最低版本号
cmake_minimum_required (VERSION 3.6)

#通用配置设置C++11 支持
set(CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")


# 根据文件目录结构组织文件
macro(SOURCE_GROUP_DIR source_files)
   set(sgbd_cur_dir ${CMAKE_CURRENT_SOURCE_DIR})
   foreach(sgbd_file ${${source_files}})
       string(REGEX REPLACE ${sgbd_cur_dir}/\(.*\) \\1 sgbd_fpath ${sgbd_file})
       string(REGEX REPLACE "\(.*\)/.*" \\1 sgbd_group_name ${sgbd_fpath})
       string(COMPARE EQUAL ${sgbd_fpath} ${sgbd_group_name} sgbd_nogroup)
       string(REPLACE "/" "\\" sgbd_group_name ${sgbd_group_name})
          if(sgbd_nogroup)
            set(sgbd_group_name "\\")
          endif(sgbd_nogroup)
       source_group(${sgbd_group_name} FILES ${sgbd_file})
    endforeach(sgbd_file)
endmacro(SOURCE_GROUP_DIR)

#递归收集文件目录下的所有文件
macro (COLLECT_COMPLIE_SOURCE_RECURSE in_soruce_root_dir out_source_file_list)
    file(GLOB_RECURSE ${out_source_file_list}
        ${in_soruce_root_dir}/*.cpp 
        ${in_soruce_root_dir}/*.h
    )
endmacro (COLLECT_COMPLIE_SOURCE_RECURSE)

#头文件目录
include_directories(${CMAKE_HOME_DIRECTORY}/include)

#编译文件变量
set (ALL_SRC_SOURCES)

#指定工程包头文件的包含路径
include_directories(${CMAKE_CURRENT_LIST_DIR}/../include)

#收集所有源文件
include(${CMAKE_CURRENT_LIST_DIR}/sources.cmake)

#组织目录文件
SOURCE_GROUP_DIR(ALL_SRC_SOURCES)

#生成库名称
add_library(libBasicModule STATIC ${ALL_SRC_SOURCES})


