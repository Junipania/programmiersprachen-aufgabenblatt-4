# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build

# Include any dependencies generated for this target.
include source/CMakeFiles/zusatz.dir/depend.make

# Include the progress variables for this target.
include source/CMakeFiles/zusatz.dir/progress.make

# Include the compile flags for this target's objects.
include source/CMakeFiles/zusatz.dir/flags.make

source/CMakeFiles/zusatz.dir/zusatz.cpp.o: source/CMakeFiles/zusatz.dir/flags.make
source/CMakeFiles/zusatz.dir/zusatz.cpp.o: ../source/zusatz.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object source/CMakeFiles/zusatz.dir/zusatz.cpp.o"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zusatz.dir/zusatz.cpp.o -c /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/zusatz.cpp

source/CMakeFiles/zusatz.dir/zusatz.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zusatz.dir/zusatz.cpp.i"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/zusatz.cpp > CMakeFiles/zusatz.dir/zusatz.cpp.i

source/CMakeFiles/zusatz.dir/zusatz.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zusatz.dir/zusatz.cpp.s"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/zusatz.cpp -o CMakeFiles/zusatz.dir/zusatz.cpp.s

source/CMakeFiles/zusatz.dir/zusatz.cpp.o.requires:

.PHONY : source/CMakeFiles/zusatz.dir/zusatz.cpp.o.requires

source/CMakeFiles/zusatz.dir/zusatz.cpp.o.provides: source/CMakeFiles/zusatz.dir/zusatz.cpp.o.requires
	$(MAKE) -f source/CMakeFiles/zusatz.dir/build.make source/CMakeFiles/zusatz.dir/zusatz.cpp.o.provides.build
.PHONY : source/CMakeFiles/zusatz.dir/zusatz.cpp.o.provides

source/CMakeFiles/zusatz.dir/zusatz.cpp.o.provides.build: source/CMakeFiles/zusatz.dir/zusatz.cpp.o


source/CMakeFiles/zusatz.dir/circle.cpp.o: source/CMakeFiles/zusatz.dir/flags.make
source/CMakeFiles/zusatz.dir/circle.cpp.o: ../source/circle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object source/CMakeFiles/zusatz.dir/circle.cpp.o"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zusatz.dir/circle.cpp.o -c /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/circle.cpp

source/CMakeFiles/zusatz.dir/circle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zusatz.dir/circle.cpp.i"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/circle.cpp > CMakeFiles/zusatz.dir/circle.cpp.i

source/CMakeFiles/zusatz.dir/circle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zusatz.dir/circle.cpp.s"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/circle.cpp -o CMakeFiles/zusatz.dir/circle.cpp.s

source/CMakeFiles/zusatz.dir/circle.cpp.o.requires:

.PHONY : source/CMakeFiles/zusatz.dir/circle.cpp.o.requires

source/CMakeFiles/zusatz.dir/circle.cpp.o.provides: source/CMakeFiles/zusatz.dir/circle.cpp.o.requires
	$(MAKE) -f source/CMakeFiles/zusatz.dir/build.make source/CMakeFiles/zusatz.dir/circle.cpp.o.provides.build
.PHONY : source/CMakeFiles/zusatz.dir/circle.cpp.o.provides

source/CMakeFiles/zusatz.dir/circle.cpp.o.provides.build: source/CMakeFiles/zusatz.dir/circle.cpp.o


source/CMakeFiles/zusatz.dir/vec2.cpp.o: source/CMakeFiles/zusatz.dir/flags.make
source/CMakeFiles/zusatz.dir/vec2.cpp.o: ../source/vec2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object source/CMakeFiles/zusatz.dir/vec2.cpp.o"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zusatz.dir/vec2.cpp.o -c /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/vec2.cpp

source/CMakeFiles/zusatz.dir/vec2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zusatz.dir/vec2.cpp.i"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/vec2.cpp > CMakeFiles/zusatz.dir/vec2.cpp.i

source/CMakeFiles/zusatz.dir/vec2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zusatz.dir/vec2.cpp.s"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/vec2.cpp -o CMakeFiles/zusatz.dir/vec2.cpp.s

source/CMakeFiles/zusatz.dir/vec2.cpp.o.requires:

.PHONY : source/CMakeFiles/zusatz.dir/vec2.cpp.o.requires

source/CMakeFiles/zusatz.dir/vec2.cpp.o.provides: source/CMakeFiles/zusatz.dir/vec2.cpp.o.requires
	$(MAKE) -f source/CMakeFiles/zusatz.dir/build.make source/CMakeFiles/zusatz.dir/vec2.cpp.o.provides.build
.PHONY : source/CMakeFiles/zusatz.dir/vec2.cpp.o.provides

source/CMakeFiles/zusatz.dir/vec2.cpp.o.provides.build: source/CMakeFiles/zusatz.dir/vec2.cpp.o


source/CMakeFiles/zusatz.dir/color.cpp.o: source/CMakeFiles/zusatz.dir/flags.make
source/CMakeFiles/zusatz.dir/color.cpp.o: ../source/color.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object source/CMakeFiles/zusatz.dir/color.cpp.o"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zusatz.dir/color.cpp.o -c /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/color.cpp

source/CMakeFiles/zusatz.dir/color.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zusatz.dir/color.cpp.i"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/color.cpp > CMakeFiles/zusatz.dir/color.cpp.i

source/CMakeFiles/zusatz.dir/color.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zusatz.dir/color.cpp.s"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/color.cpp -o CMakeFiles/zusatz.dir/color.cpp.s

source/CMakeFiles/zusatz.dir/color.cpp.o.requires:

.PHONY : source/CMakeFiles/zusatz.dir/color.cpp.o.requires

source/CMakeFiles/zusatz.dir/color.cpp.o.provides: source/CMakeFiles/zusatz.dir/color.cpp.o.requires
	$(MAKE) -f source/CMakeFiles/zusatz.dir/build.make source/CMakeFiles/zusatz.dir/color.cpp.o.provides.build
.PHONY : source/CMakeFiles/zusatz.dir/color.cpp.o.provides

source/CMakeFiles/zusatz.dir/color.cpp.o.provides.build: source/CMakeFiles/zusatz.dir/color.cpp.o


source/CMakeFiles/zusatz.dir/mat2.cpp.o: source/CMakeFiles/zusatz.dir/flags.make
source/CMakeFiles/zusatz.dir/mat2.cpp.o: ../source/mat2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object source/CMakeFiles/zusatz.dir/mat2.cpp.o"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zusatz.dir/mat2.cpp.o -c /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/mat2.cpp

source/CMakeFiles/zusatz.dir/mat2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zusatz.dir/mat2.cpp.i"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/mat2.cpp > CMakeFiles/zusatz.dir/mat2.cpp.i

source/CMakeFiles/zusatz.dir/mat2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zusatz.dir/mat2.cpp.s"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source/mat2.cpp -o CMakeFiles/zusatz.dir/mat2.cpp.s

source/CMakeFiles/zusatz.dir/mat2.cpp.o.requires:

.PHONY : source/CMakeFiles/zusatz.dir/mat2.cpp.o.requires

source/CMakeFiles/zusatz.dir/mat2.cpp.o.provides: source/CMakeFiles/zusatz.dir/mat2.cpp.o.requires
	$(MAKE) -f source/CMakeFiles/zusatz.dir/build.make source/CMakeFiles/zusatz.dir/mat2.cpp.o.provides.build
.PHONY : source/CMakeFiles/zusatz.dir/mat2.cpp.o.provides

source/CMakeFiles/zusatz.dir/mat2.cpp.o.provides.build: source/CMakeFiles/zusatz.dir/mat2.cpp.o


# Object files for target zusatz
zusatz_OBJECTS = \
"CMakeFiles/zusatz.dir/zusatz.cpp.o" \
"CMakeFiles/zusatz.dir/circle.cpp.o" \
"CMakeFiles/zusatz.dir/vec2.cpp.o" \
"CMakeFiles/zusatz.dir/color.cpp.o" \
"CMakeFiles/zusatz.dir/mat2.cpp.o"

# External object files for target zusatz
zusatz_EXTERNAL_OBJECTS =

source/zusatz: source/CMakeFiles/zusatz.dir/zusatz.cpp.o
source/zusatz: source/CMakeFiles/zusatz.dir/circle.cpp.o
source/zusatz: source/CMakeFiles/zusatz.dir/vec2.cpp.o
source/zusatz: source/CMakeFiles/zusatz.dir/color.cpp.o
source/zusatz: source/CMakeFiles/zusatz.dir/mat2.cpp.o
source/zusatz: source/CMakeFiles/zusatz.dir/build.make
source/zusatz: source/CMakeFiles/zusatz.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable zusatz"
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zusatz.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
source/CMakeFiles/zusatz.dir/build: source/zusatz

.PHONY : source/CMakeFiles/zusatz.dir/build

source/CMakeFiles/zusatz.dir/requires: source/CMakeFiles/zusatz.dir/zusatz.cpp.o.requires
source/CMakeFiles/zusatz.dir/requires: source/CMakeFiles/zusatz.dir/circle.cpp.o.requires
source/CMakeFiles/zusatz.dir/requires: source/CMakeFiles/zusatz.dir/vec2.cpp.o.requires
source/CMakeFiles/zusatz.dir/requires: source/CMakeFiles/zusatz.dir/color.cpp.o.requires
source/CMakeFiles/zusatz.dir/requires: source/CMakeFiles/zusatz.dir/mat2.cpp.o.requires

.PHONY : source/CMakeFiles/zusatz.dir/requires

source/CMakeFiles/zusatz.dir/clean:
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source && $(CMAKE_COMMAND) -P CMakeFiles/zusatz.dir/cmake_clean.cmake
.PHONY : source/CMakeFiles/zusatz.dir/clean

source/CMakeFiles/zusatz.dir/depend:
	cd /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3 /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/source /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source /home/isabelle/Dokumente/programmiersprachen-aufgabenblatt-3/build/source/CMakeFiles/zusatz.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : source/CMakeFiles/zusatz.dir/depend

