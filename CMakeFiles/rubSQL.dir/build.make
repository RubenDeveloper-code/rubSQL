# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ruben/Programacion/estudio/c++/rubSQL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ruben/Programacion/estudio/c++/rubSQL

# Include any dependencies generated for this target.
include CMakeFiles/rubSQL.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rubSQL.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rubSQL.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rubSQL.dir/flags.make

src/interpreter/parser/parser.c: src/interpreter/parser/parser.y
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/ruben/Programacion/estudio/c++/rubSQL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[BISON][Parser] Building parser with bison 3.8.2"
	/sbin/bison --defines=/home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/parser.tab.h -o /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/parser.c /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/parser.y

src/interpreter/parser/parser.tab.h: src/interpreter/parser/parser.c
	@$(CMAKE_COMMAND) -E touch_nocreate src/interpreter/parser/parser.tab.h

src/interpreter/scanner/lexer.c: src/interpreter/scanner/lexer.l
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/ruben/Programacion/estudio/c++/rubSQL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[FLEX][Scanner] Building scanner with flex 2.6.4"
	/sbin/flex -o/home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/scanner/lexer.c /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/scanner/lexer.l

CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.o: CMakeFiles/rubSQL.dir/flags.make
CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.o: src/interpreter/parser/parser.c
CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.o: CMakeFiles/rubSQL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ruben/Programacion/estudio/c++/rubSQL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.o"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.o -MF CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.o.d -o CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.o -c /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/parser.c

CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.i"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/parser.c > CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.i

CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.s"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/parser.c -o CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.s

CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.o: CMakeFiles/rubSQL.dir/flags.make
CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.o: src/interpreter/parser/helper/types.c
CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.o: CMakeFiles/rubSQL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ruben/Programacion/estudio/c++/rubSQL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.o"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.o -MF CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.o.d -o CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.o -c /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/helper/types.c

CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.i"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/helper/types.c > CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.i

CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.s"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/helper/types.c -o CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.s

CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.o: CMakeFiles/rubSQL.dir/flags.make
CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.o: src/interpreter/scanner/lexer.c
CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.o: src/interpreter/parser/parser.tab.h
CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.o: CMakeFiles/rubSQL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ruben/Programacion/estudio/c++/rubSQL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.o"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.o -MF CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.o.d -o CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.o -c /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/scanner/lexer.c

CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.i"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/scanner/lexer.c > CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.i

CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.s"
	/sbin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/scanner/lexer.c -o CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.s

CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.o: CMakeFiles/rubSQL.dir/flags.make
CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.o: src/interpreter/parser/helper/collector_interface.cpp
CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.o: CMakeFiles/rubSQL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ruben/Programacion/estudio/c++/rubSQL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.o -MF CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.o.d -o CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.o -c /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/helper/collector_interface.cpp

CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/helper/collector_interface.cpp > CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.i

CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/helper/collector_interface.cpp -o CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.s

CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.o: CMakeFiles/rubSQL.dir/flags.make
CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.o: src/interpreter/commands/interface.cpp
CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.o: CMakeFiles/rubSQL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ruben/Programacion/estudio/c++/rubSQL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.o -MF CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.o.d -o CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.o -c /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/commands/interface.cpp

CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/commands/interface.cpp > CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.i

CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/commands/interface.cpp -o CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.s

CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.o: CMakeFiles/rubSQL.dir/flags.make
CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.o: src/interpreter/commands/ddl/commands.cpp
CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.o: CMakeFiles/rubSQL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ruben/Programacion/estudio/c++/rubSQL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.o -MF CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.o.d -o CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.o -c /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/commands/ddl/commands.cpp

CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/commands/ddl/commands.cpp > CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.i

CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/commands/ddl/commands.cpp -o CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.s

CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.o: CMakeFiles/rubSQL.dir/flags.make
CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.o: src/interpreter/commands/dml/commands.cpp
CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.o: CMakeFiles/rubSQL.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ruben/Programacion/estudio/c++/rubSQL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.o"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.o -MF CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.o.d -o CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.o -c /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/commands/dml/commands.cpp

CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.i"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/commands/dml/commands.cpp > CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.i

CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.s"
	/sbin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/commands/dml/commands.cpp -o CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.s

# Object files for target rubSQL
rubSQL_OBJECTS = \
"CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.o" \
"CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.o" \
"CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.o" \
"CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.o" \
"CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.o" \
"CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.o" \
"CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.o"

# External object files for target rubSQL
rubSQL_EXTERNAL_OBJECTS =

rubSQL: CMakeFiles/rubSQL.dir/src/interpreter/parser/parser.c.o
rubSQL: CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/types.c.o
rubSQL: CMakeFiles/rubSQL.dir/src/interpreter/scanner/lexer.c.o
rubSQL: CMakeFiles/rubSQL.dir/src/interpreter/parser/helper/collector_interface.cpp.o
rubSQL: CMakeFiles/rubSQL.dir/src/interpreter/commands/interface.cpp.o
rubSQL: CMakeFiles/rubSQL.dir/src/interpreter/commands/ddl/commands.cpp.o
rubSQL: CMakeFiles/rubSQL.dir/src/interpreter/commands/dml/commands.cpp.o
rubSQL: CMakeFiles/rubSQL.dir/build.make
rubSQL: CMakeFiles/rubSQL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ruben/Programacion/estudio/c++/rubSQL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable rubSQL"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rubSQL.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rubSQL.dir/build: rubSQL
.PHONY : CMakeFiles/rubSQL.dir/build

CMakeFiles/rubSQL.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rubSQL.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rubSQL.dir/clean

CMakeFiles/rubSQL.dir/depend: src/interpreter/parser/parser.c
CMakeFiles/rubSQL.dir/depend: src/interpreter/parser/parser.tab.h
CMakeFiles/rubSQL.dir/depend: src/interpreter/scanner/lexer.c
	cd /home/ruben/Programacion/estudio/c++/rubSQL && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruben/Programacion/estudio/c++/rubSQL /home/ruben/Programacion/estudio/c++/rubSQL /home/ruben/Programacion/estudio/c++/rubSQL /home/ruben/Programacion/estudio/c++/rubSQL /home/ruben/Programacion/estudio/c++/rubSQL/CMakeFiles/rubSQL.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/rubSQL.dir/depend

