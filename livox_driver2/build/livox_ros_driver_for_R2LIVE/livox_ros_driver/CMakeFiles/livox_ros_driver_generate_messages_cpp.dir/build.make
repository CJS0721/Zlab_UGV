# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/robot/livox_driver2/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robot/livox_driver2/build

# Utility rule file for livox_ros_driver_generate_messages_cpp.

# Include the progress variables for this target.
include livox_ros_driver_for_R2LIVE/livox_ros_driver/CMakeFiles/livox_ros_driver_generate_messages_cpp.dir/progress.make

livox_ros_driver_for_R2LIVE/livox_ros_driver/CMakeFiles/livox_ros_driver_generate_messages_cpp: /home/robot/livox_driver2/devel/include/livox_ros_driver/CustomMsg.h
livox_ros_driver_for_R2LIVE/livox_ros_driver/CMakeFiles/livox_ros_driver_generate_messages_cpp: /home/robot/livox_driver2/devel/include/livox_ros_driver/CustomPoint.h


/home/robot/livox_driver2/devel/include/livox_ros_driver/CustomMsg.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/home/robot/livox_driver2/devel/include/livox_ros_driver/CustomMsg.h: /home/robot/livox_driver2/src/livox_ros_driver_for_R2LIVE/livox_ros_driver/msg/CustomMsg.msg
/home/robot/livox_driver2/devel/include/livox_ros_driver/CustomMsg.h: /home/robot/livox_driver2/src/livox_ros_driver_for_R2LIVE/livox_ros_driver/msg/CustomPoint.msg
/home/robot/livox_driver2/devel/include/livox_ros_driver/CustomMsg.h: /opt/ros/melodic/share/std_msgs/msg/Header.msg
/home/robot/livox_driver2/devel/include/livox_ros_driver/CustomMsg.h: /opt/ros/melodic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/robot/livox_driver2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from livox_ros_driver/CustomMsg.msg"
	cd /home/robot/livox_driver2/src/livox_ros_driver_for_R2LIVE/livox_ros_driver && /home/robot/livox_driver2/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/robot/livox_driver2/src/livox_ros_driver_for_R2LIVE/livox_ros_driver/msg/CustomMsg.msg -Ilivox_ros_driver:/home/robot/livox_driver2/src/livox_ros_driver_for_R2LIVE/livox_ros_driver/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p livox_ros_driver -o /home/robot/livox_driver2/devel/include/livox_ros_driver -e /opt/ros/melodic/share/gencpp/cmake/..

/home/robot/livox_driver2/devel/include/livox_ros_driver/CustomPoint.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/home/robot/livox_driver2/devel/include/livox_ros_driver/CustomPoint.h: /home/robot/livox_driver2/src/livox_ros_driver_for_R2LIVE/livox_ros_driver/msg/CustomPoint.msg
/home/robot/livox_driver2/devel/include/livox_ros_driver/CustomPoint.h: /opt/ros/melodic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/robot/livox_driver2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from livox_ros_driver/CustomPoint.msg"
	cd /home/robot/livox_driver2/src/livox_ros_driver_for_R2LIVE/livox_ros_driver && /home/robot/livox_driver2/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/robot/livox_driver2/src/livox_ros_driver_for_R2LIVE/livox_ros_driver/msg/CustomPoint.msg -Ilivox_ros_driver:/home/robot/livox_driver2/src/livox_ros_driver_for_R2LIVE/livox_ros_driver/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p livox_ros_driver -o /home/robot/livox_driver2/devel/include/livox_ros_driver -e /opt/ros/melodic/share/gencpp/cmake/..

livox_ros_driver_generate_messages_cpp: livox_ros_driver_for_R2LIVE/livox_ros_driver/CMakeFiles/livox_ros_driver_generate_messages_cpp
livox_ros_driver_generate_messages_cpp: /home/robot/livox_driver2/devel/include/livox_ros_driver/CustomMsg.h
livox_ros_driver_generate_messages_cpp: /home/robot/livox_driver2/devel/include/livox_ros_driver/CustomPoint.h
livox_ros_driver_generate_messages_cpp: livox_ros_driver_for_R2LIVE/livox_ros_driver/CMakeFiles/livox_ros_driver_generate_messages_cpp.dir/build.make

.PHONY : livox_ros_driver_generate_messages_cpp

# Rule to build all files generated by this target.
livox_ros_driver_for_R2LIVE/livox_ros_driver/CMakeFiles/livox_ros_driver_generate_messages_cpp.dir/build: livox_ros_driver_generate_messages_cpp

.PHONY : livox_ros_driver_for_R2LIVE/livox_ros_driver/CMakeFiles/livox_ros_driver_generate_messages_cpp.dir/build

livox_ros_driver_for_R2LIVE/livox_ros_driver/CMakeFiles/livox_ros_driver_generate_messages_cpp.dir/clean:
	cd /home/robot/livox_driver2/build/livox_ros_driver_for_R2LIVE/livox_ros_driver && $(CMAKE_COMMAND) -P CMakeFiles/livox_ros_driver_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : livox_ros_driver_for_R2LIVE/livox_ros_driver/CMakeFiles/livox_ros_driver_generate_messages_cpp.dir/clean

livox_ros_driver_for_R2LIVE/livox_ros_driver/CMakeFiles/livox_ros_driver_generate_messages_cpp.dir/depend:
	cd /home/robot/livox_driver2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robot/livox_driver2/src /home/robot/livox_driver2/src/livox_ros_driver_for_R2LIVE/livox_ros_driver /home/robot/livox_driver2/build /home/robot/livox_driver2/build/livox_ros_driver_for_R2LIVE/livox_ros_driver /home/robot/livox_driver2/build/livox_ros_driver_for_R2LIVE/livox_ros_driver/CMakeFiles/livox_ros_driver_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : livox_ros_driver_for_R2LIVE/livox_ros_driver/CMakeFiles/livox_ros_driver_generate_messages_cpp.dir/depend

