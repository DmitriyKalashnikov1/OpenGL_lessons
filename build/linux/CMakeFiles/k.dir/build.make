# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons/build/linux

# Include any dependencies generated for this target.
include CMakeFiles/k.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/k.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/k.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/k.dir/flags.make

CMakeFiles/k.dir/k.cpp.o: CMakeFiles/k.dir/flags.make
CMakeFiles/k.dir/k.cpp.o: /media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons/k.cpp
CMakeFiles/k.dir/k.cpp.o: CMakeFiles/k.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons/build/linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/k.dir/k.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/k.dir/k.cpp.o -MF CMakeFiles/k.dir/k.cpp.o.d -o CMakeFiles/k.dir/k.cpp.o -c /media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons/k.cpp

CMakeFiles/k.dir/k.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/k.dir/k.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons/k.cpp > CMakeFiles/k.dir/k.cpp.i

CMakeFiles/k.dir/k.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/k.dir/k.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons/k.cpp -o CMakeFiles/k.dir/k.cpp.s

# Object files for target k
k_OBJECTS = \
"CMakeFiles/k.dir/k.cpp.o"

# External object files for target k
k_EXTERNAL_OBJECTS =

k : CMakeFiles/k.dir/k.cpp.o
k : CMakeFiles/k.dir/build.make
k : glfw/src/libglfw3.a
k : /usr/lib/x86_64-linux-gnu/librt.a
k : /usr/lib/x86_64-linux-gnu/libm.so
k : /usr/lib/x86_64-linux-gnu/libX11.so
k : CMakeFiles/k.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons/build/linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable k"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/k.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/k.dir/build: k
.PHONY : CMakeFiles/k.dir/build

CMakeFiles/k.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/k.dir/cmake_clean.cmake
.PHONY : CMakeFiles/k.dir/clean

CMakeFiles/k.dir/depend:
	cd /media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons/build/linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons /media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons /media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons/build/linux /media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons/build/linux /media/dmitriykalshnikov/WindowsFiles/Creations/C++_programs/OpenGL_lessons/build/linux/CMakeFiles/k.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/k.dir/depend
