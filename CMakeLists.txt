cmake_minimum_required (VERSION 2.8)
set (PRJ_NAME str2str_2.4.3beta)
project (${PRJ_NAME})

####################### For Users to modify ##########################
#add_definitions (-DDEBUG)
add_definitions(-DENAGLO)
add_definitions(-DENAGAL)
add_definitions(-DENAQZS)
add_definitions(-DENACMP)
add_definitions(-DTRACE)
add_definitions(-DNFREQ=3)
add_definitions(-DNEXOBS=3)
############################## End ###################################

###################### Don't touch if possible #######################
# set assembly and c language compile flags
set (CMAKE_C_FLAGS "-lm -lrt -lpthread -Wall -O3 -ansi -pedantic -Wno-unused-but-set-variable")
set (CMAKE_CXX_FLAGS "-lm -lrt -lpthread -Wall -O3 -ansi -pedantic -Wno-unused-but-set-variable")

#++++++++++++++++ INCLUDES ++++++++++++++++++++++
#==== User application related includes ===========
# path of the header files to be included
include_directories ("${PROJECT_SOURCE_DIR}/src/rtklib")
#++++++++++++++++ MAKE LIBS +++++++++++++++++++++++
# add rtklib sources
aux_source_directory (${PROJECT_SOURCE_DIR}/src/rtklib rtklib_src)
# add receiver driver sources
aux_source_directory (${PROJECT_SOURCE_DIR}/src/rtklib/rcv receiver_src)
#++++++++++++++++++ Compile +++++++++++++++++++++++
add_executable (${PRJ_NAME} src/str2str.c ${rtklib_src} ${receiver_src})
