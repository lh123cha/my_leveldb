# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/lh123/Downloads/clion-2020.3.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/lh123/Downloads/clion-2020.3.2/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/env_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/env_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/env_test.dir/flags.make

CMakeFiles/env_test.dir/util/testutil.cc.o: CMakeFiles/env_test.dir/flags.make
CMakeFiles/env_test.dir/util/testutil.cc.o: ../util/testutil.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/env_test.dir/util/testutil.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/env_test.dir/util/testutil.cc.o -c /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/util/testutil.cc

CMakeFiles/env_test.dir/util/testutil.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/env_test.dir/util/testutil.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/util/testutil.cc > CMakeFiles/env_test.dir/util/testutil.cc.i

CMakeFiles/env_test.dir/util/testutil.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/env_test.dir/util/testutil.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/util/testutil.cc -o CMakeFiles/env_test.dir/util/testutil.cc.s

CMakeFiles/env_test.dir/util/env_test.cc.o: CMakeFiles/env_test.dir/flags.make
CMakeFiles/env_test.dir/util/env_test.cc.o: ../util/env_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/env_test.dir/util/env_test.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/env_test.dir/util/env_test.cc.o -c /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/util/env_test.cc

CMakeFiles/env_test.dir/util/env_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/env_test.dir/util/env_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/util/env_test.cc > CMakeFiles/env_test.dir/util/env_test.cc.i

CMakeFiles/env_test.dir/util/env_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/env_test.dir/util/env_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/util/env_test.cc -o CMakeFiles/env_test.dir/util/env_test.cc.s

# Object files for target env_test
env_test_OBJECTS = \
"CMakeFiles/env_test.dir/util/testutil.cc.o" \
"CMakeFiles/env_test.dir/util/env_test.cc.o"

# External object files for target env_test
env_test_EXTERNAL_OBJECTS =

env_test: CMakeFiles/env_test.dir/util/testutil.cc.o
env_test: CMakeFiles/env_test.dir/util/env_test.cc.o
env_test: CMakeFiles/env_test.dir/build.make
env_test: libleveldb.a
env_test: lib/libgmockd.a
env_test: lib/libgtestd.a
env_test: CMakeFiles/env_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable env_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/env_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/env_test.dir/build: env_test

.PHONY : CMakeFiles/env_test.dir/build

CMakeFiles/env_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/env_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/env_test.dir/clean

CMakeFiles/env_test.dir/depend:
	cd /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/cmake-build-debug /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/cmake-build-debug /home/lh123/Downloads/finalproject/courseforleveldb-master/leveldb/cmake-build-debug/CMakeFiles/env_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/env_test.dir/depend

