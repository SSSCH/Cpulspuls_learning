# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\software\clion\CLion 2018.3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\software\clion\CLion 2018.3.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\SCH\CLionProjects\c++primer_learning

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\SCH\CLionProjects\c++primer_learning\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/c__primer_learning.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/c__primer_learning.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/c__primer_learning.dir/flags.make

CMakeFiles/c__primer_learning.dir/main.cpp.obj: CMakeFiles/c__primer_learning.dir/flags.make
CMakeFiles/c__primer_learning.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\SCH\CLionProjects\c++primer_learning\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/c__primer_learning.dir/main.cpp.obj"
	D:\software\clion\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\c__primer_learning.dir\main.cpp.obj -c C:\Users\SCH\CLionProjects\c++primer_learning\main.cpp

CMakeFiles/c__primer_learning.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c__primer_learning.dir/main.cpp.i"
	D:\software\clion\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\SCH\CLionProjects\c++primer_learning\main.cpp > CMakeFiles\c__primer_learning.dir\main.cpp.i

CMakeFiles/c__primer_learning.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c__primer_learning.dir/main.cpp.s"
	D:\software\clion\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\SCH\CLionProjects\c++primer_learning\main.cpp -o CMakeFiles\c__primer_learning.dir\main.cpp.s

# Object files for target c__primer_learning
c__primer_learning_OBJECTS = \
"CMakeFiles/c__primer_learning.dir/main.cpp.obj"

# External object files for target c__primer_learning
c__primer_learning_EXTERNAL_OBJECTS =

c__primer_learning.exe: CMakeFiles/c__primer_learning.dir/main.cpp.obj
c__primer_learning.exe: CMakeFiles/c__primer_learning.dir/build.make
c__primer_learning.exe: CMakeFiles/c__primer_learning.dir/linklibs.rsp
c__primer_learning.exe: CMakeFiles/c__primer_learning.dir/objects1.rsp
c__primer_learning.exe: CMakeFiles/c__primer_learning.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\SCH\CLionProjects\c++primer_learning\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable c__primer_learning.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\c__primer_learning.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/c__primer_learning.dir/build: c__primer_learning.exe

.PHONY : CMakeFiles/c__primer_learning.dir/build

CMakeFiles/c__primer_learning.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\c__primer_learning.dir\cmake_clean.cmake
.PHONY : CMakeFiles/c__primer_learning.dir/clean

CMakeFiles/c__primer_learning.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\SCH\CLionProjects\c++primer_learning C:\Users\SCH\CLionProjects\c++primer_learning C:\Users\SCH\CLionProjects\c++primer_learning\cmake-build-debug C:\Users\SCH\CLionProjects\c++primer_learning\cmake-build-debug C:\Users\SCH\CLionProjects\c++primer_learning\cmake-build-debug\CMakeFiles\c__primer_learning.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/c__primer_learning.dir/depend
