cmake_minimum_required(VERSION 3.10)
project(rubSQL)  # Especifica que el proyecto es en C++

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

find_package(FLEX REQUIRED)
find_package(BISON REQUIRED)

set(SRC_DIR ${CMAKE_SOURCE_DIR}/src)
set(INTERPRETER_DIR ${SRC_DIR}/interpreter)
set(SCANNER_DIR ${SRC_DIR}/interpreter/scanner)
set(PARSER_DIR ${SRC_DIR}/interpreter/parser)

BISON_TARGET(Parser ${PARSER_DIR}/parser.y ${PARSER_DIR}/parser.c DEFINES_FILE ${PARSER_DIR}/parser.tab.h)

FLEX_TARGET(Scanner ${SCANNER_DIR}/lexer.l ${SCANNER_DIR}/lexer.c)

ADD_FLEX_BISON_DEPENDENCY(Scanner Parser)

#file(GLOB_RECURSE SOURCES_C "${CMAKE_SOURCE_DIR}/*.c")
#file(GLOB_RECURSE SOURCES_CPP "${CMAKE_SOURCE_DIR}/*.cpp")
set(C_SOURCE_FILES
	${PARSER_DIR}/parser.c 
	${PARSER_DIR}/helper/types.c 
	${SCANNER_DIR}/lexer.c
)

set(CXX_SOURCE_FILES
	${PARSER_DIR}/helper/collector_interface.cpp
	${INTERPRETER_DIR}/commands/interface.cpp
	${INTERPRETER_DIR}/commands/ddl/commands.cpp
	${INTERPRETER_DIR}/commands/dml/commands.cpp
)

set(INCLUDES 
	${PARSER_DIR}
	${PARSER_DIR}/helper
	${INTERPRETER_DIR}
	${INTERPRETER_DIR}/commands
	${INTERPRETER_DIR}/commands/ddl
	${INTERPRETER_DIR}/commands/designs
)

include_directories(${INCLUDES}) 

add_executable(rubSQL ${C_SOURCE_FILES} ${CXX_SOURCE_FILES})


