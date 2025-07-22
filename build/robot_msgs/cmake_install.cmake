# Install script for directory: /home/odroid/catkin_ws/src/robot_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/odroid/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_msgs/msg" TYPE FILE FILES
    "/home/odroid/catkin_ws/src/robot_msgs/msg/bateria.msg"
    "/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg"
    "/home/odroid/catkin_ws/src/robot_msgs/msg/GPS.msg"
    "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg"
    "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg"
    "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg"
    "/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg"
    "/home/odroid/catkin_ws/src/robot_msgs/msg/node_status.msg"
    "/home/odroid/catkin_ws/src/robot_msgs/msg/robotPose.msg"
    "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel_status.msg"
    "/home/odroid/catkin_ws/src/robot_msgs/msg/isAlive.msg"
    "/home/odroid/catkin_ws/src/robot_msgs/msg/sensorStatus.msg"
    "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_msgs/srv" TYPE FILE FILES
    "/home/odroid/catkin_ws/src/robot_msgs/srv/UpdateMap.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/CurrentMap.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/DeleteMap.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/IsHardwareReady.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/HardwareDetected.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/Modes.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/MapsList.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/NavigationStatusError.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/Relay.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/Remap.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/Shutdown.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/RobotShutdown.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelDriver.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelError.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/SetGain.srv"
    "/home/odroid/catkin_ws/src/robot_msgs/srv/GetGain.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_msgs/action" TYPE FILE FILES "/home/odroid/catkin_ws/src/robot_msgs/action/Docking.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_msgs/msg" TYPE FILE FILES
    "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingAction.msg"
    "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg"
    "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg"
    "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg"
    "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg"
    "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg"
    "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_msgs/cmake" TYPE FILE FILES "/home/odroid/catkin_ws/build/robot_msgs/catkin_generated/installspace/robot_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/odroid/catkin_ws/devel/include/robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/odroid/catkin_ws/devel/share/roseus/ros/robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/odroid/catkin_ws/devel/share/common-lisp/ros/robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/odroid/catkin_ws/devel/share/gennodejs/ros/robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/odroid/catkin_ws/devel/lib/python3/dist-packages/robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/odroid/catkin_ws/devel/lib/python3/dist-packages/robot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/odroid/catkin_ws/build/robot_msgs/catkin_generated/installspace/robot_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_msgs/cmake" TYPE FILE FILES "/home/odroid/catkin_ws/build/robot_msgs/catkin_generated/installspace/robot_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_msgs/cmake" TYPE FILE FILES
    "/home/odroid/catkin_ws/build/robot_msgs/catkin_generated/installspace/robot_msgsConfig.cmake"
    "/home/odroid/catkin_ws/build/robot_msgs/catkin_generated/installspace/robot_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_msgs" TYPE FILE FILES "/home/odroid/catkin_ws/src/robot_msgs/package.xml")
endif()

