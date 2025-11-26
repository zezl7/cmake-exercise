cmake_minimum_required(VERSION 3.12)

project(cmake-exercise)

find_package(Boost 1.36.0 REQUIRED COMPONENTS container filesystem)
include_directories(${Boost_INCLUDE_DIRS})

find_package(deal.II 9.5.0 REQUIRED
  HINTS ${DEAL_II_DIR} ../ ../../ $ENV{DEAL_II_DIR}
  )
deal_ii_initialize_cached_variables() 

find_package(yaml-cpp REQUIRED)

add_executable(main 
    main.cpp 
    flatset/flatset.cpp 
    filesystem/filesystem.cpp 
    fem/fem.cpp
    yamlParser/yamlParser.cpp
)

deal_ii_setup_target(main)

target_link_libraries(main ${Boost_LIBRARIES} yaml-cpp)