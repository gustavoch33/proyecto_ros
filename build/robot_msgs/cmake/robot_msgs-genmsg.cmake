# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_msgs: 20 messages, 16 services")

set(MSG_I_FLAGS "-Irobot_msgs:/home/odroid/catkin_ws/src/robot_msgs/msg;-Irobot_msgs:/home/odroid/catkin_ws/devel/share/robot_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/bateria.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/msg/bateria.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/GPS.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/msg/GPS.msg" "std_msgs/Header:robot_msgs/Coordinates"
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg" "std_msgs/Header:robot_msgs/mode_status"
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/node_status.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/msg/node_status.msg" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/robotPose.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/msg/robotPose.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel_status.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel_status.msg" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/isAlive.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/msg/isAlive.msg" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/sensorStatus.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/msg/sensorStatus.msg" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel.msg" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingAction.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingAction.msg" "robot_msgs/DockingActionFeedback:actionlib_msgs/GoalID:robot_msgs/DockingActionGoal:robot_msgs/DockingResult:actionlib_msgs/GoalStatus:robot_msgs/DockingGoal:robot_msgs/DockingFeedback:std_msgs/Header:robot_msgs/DockingActionResult"
)

get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:robot_msgs/DockingGoal"
)

get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:robot_msgs/DockingResult"
)

get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:robot_msgs/DockingFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/UpdateMap.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/UpdateMap.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/CurrentMap.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/CurrentMap.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/DeleteMap.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/DeleteMap.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/IsHardwareReady.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/IsHardwareReady.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/HardwareDetected.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/HardwareDetected.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Modes.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/Modes.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/MapsList.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/MapsList.srv" "robot_msgs/map_size"
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/NavigationStatusError.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/NavigationStatusError.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Relay.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/Relay.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Remap.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/Remap.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Shutdown.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/Shutdown.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/RobotShutdown.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/RobotShutdown.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelDriver.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelDriver.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelError.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelError.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/SetGain.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/SetGain.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/GetGain.srv" NAME_WE)
add_custom_target(_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_msgs" "/home/odroid/catkin_ws/src/robot_msgs/srv/GetGain.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/bateria.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/node_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/robotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/isAlive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/sensorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_msg_cpp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)

### Generating Services
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/UpdateMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/CurrentMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/IsHardwareReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/HardwareDetected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Modes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/MapsList.srv"
  "${MSG_I_FLAGS}"
  "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/NavigationStatusError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Relay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Remap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Shutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/RobotShutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelDriver.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/SetGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)
_generate_srv_cpp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/GetGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
)

### Generating Module File
_generate_module_cpp(robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_msgs_generate_messages robot_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/bateria.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/node_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/robotPose.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/isAlive.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/sensorStatus.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingAction.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/UpdateMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/CurrentMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/IsHardwareReady.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/HardwareDetected.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Modes.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/MapsList.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/NavigationStatusError.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Relay.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Remap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Shutdown.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/RobotShutdown.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelDriver.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelError.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/SetGain.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/GetGain.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_cpp _robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_msgs_gencpp)
add_dependencies(robot_msgs_gencpp robot_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/bateria.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/node_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/robotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/isAlive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/sensorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_msg_eus(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)

### Generating Services
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/UpdateMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/CurrentMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/IsHardwareReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/HardwareDetected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Modes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/MapsList.srv"
  "${MSG_I_FLAGS}"
  "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/NavigationStatusError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Relay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Remap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Shutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/RobotShutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelDriver.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/SetGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)
_generate_srv_eus(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/GetGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
)

### Generating Module File
_generate_module_eus(robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_msgs_generate_messages robot_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/bateria.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/node_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/robotPose.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/isAlive.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/sensorStatus.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingAction.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/UpdateMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/CurrentMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/IsHardwareReady.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/HardwareDetected.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Modes.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/MapsList.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/NavigationStatusError.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Relay.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Remap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Shutdown.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/RobotShutdown.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelDriver.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelError.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/SetGain.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/GetGain.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_eus _robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_msgs_geneus)
add_dependencies(robot_msgs_geneus robot_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/bateria.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/node_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/robotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/isAlive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/sensorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_msg_lisp(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)

### Generating Services
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/UpdateMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/CurrentMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/IsHardwareReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/HardwareDetected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Modes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/MapsList.srv"
  "${MSG_I_FLAGS}"
  "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/NavigationStatusError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Relay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Remap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Shutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/RobotShutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelDriver.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/SetGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)
_generate_srv_lisp(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/GetGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
)

### Generating Module File
_generate_module_lisp(robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_msgs_generate_messages robot_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/bateria.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/node_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/robotPose.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/isAlive.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/sensorStatus.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingAction.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/UpdateMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/CurrentMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/IsHardwareReady.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/HardwareDetected.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Modes.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/MapsList.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/NavigationStatusError.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Relay.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Remap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Shutdown.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/RobotShutdown.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelDriver.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelError.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/SetGain.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/GetGain.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_lisp _robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_msgs_genlisp)
add_dependencies(robot_msgs_genlisp robot_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/bateria.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/node_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/robotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/isAlive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/sensorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_msg_nodejs(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)

### Generating Services
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/UpdateMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/CurrentMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/IsHardwareReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/HardwareDetected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Modes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/MapsList.srv"
  "${MSG_I_FLAGS}"
  "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/NavigationStatusError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Relay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Remap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Shutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/RobotShutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelDriver.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/SetGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)
_generate_srv_nodejs(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/GetGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
)

### Generating Module File
_generate_module_nodejs(robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_msgs_generate_messages robot_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/bateria.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/node_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/robotPose.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/isAlive.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/sensorStatus.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingAction.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/UpdateMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/CurrentMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/IsHardwareReady.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/HardwareDetected.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Modes.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/MapsList.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/NavigationStatusError.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Relay.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Remap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Shutdown.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/RobotShutdown.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelDriver.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelError.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/SetGain.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/GetGain.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_nodejs _robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_msgs_gennodejs)
add_dependencies(robot_msgs_gennodejs robot_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/bateria.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/node_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/robotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/isAlive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/sensorStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_msg_py(robot_msgs
  "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)

### Generating Services
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/UpdateMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/CurrentMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/IsHardwareReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/HardwareDetected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Modes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/MapsList.srv"
  "${MSG_I_FLAGS}"
  "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/NavigationStatusError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Relay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Remap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/Shutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/RobotShutdown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelDriver.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/SetGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)
_generate_srv_py(robot_msgs
  "/home/odroid/catkin_ws/src/robot_msgs/srv/GetGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
)

### Generating Module File
_generate_module_py(robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_msgs_generate_messages robot_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/bateria.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/Coordinates.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/modes_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/map_size.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/mode_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/node_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/robotPose.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel_status.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/isAlive.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/sensorStatus.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/msg/wheel.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingAction.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionGoal.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionResult.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingActionFeedback.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingGoal.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingResult.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/devel/share/robot_msgs/msg/DockingFeedback.msg" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/UpdateMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/CurrentMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/IsHardwareReady.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/HardwareDetected.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Modes.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/MapsList.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/NavigationStatusError.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Relay.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Remap.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/Shutdown.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/RobotShutdown.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelDriver.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/WheelError.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/SetGain.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/robot_msgs/srv/GetGain.srv" NAME_WE)
add_dependencies(robot_msgs_generate_messages_py _robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_msgs_genpy)
add_dependencies(robot_msgs_genpy robot_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(robot_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robot_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robot_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(robot_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(robot_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(robot_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robot_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robot_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(robot_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(robot_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(robot_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robot_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
