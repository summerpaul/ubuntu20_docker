# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "autoware_planning_msgs: 10 messages, 0 services")

set(MSG_I_FLAGS "-Iautoware_planning_msgs:/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(autoware_planning_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/LaneSequence.msg" NAME_WE)
add_custom_target(_autoware_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_planning_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/LaneSequence.msg" ""
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Path.msg" NAME_WE)
add_custom_target(_autoware_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_planning_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Path.msg" "geometry_msgs/Quaternion:nav_msgs/MapMetaData:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:autoware_planning_msgs/PathPoint:geometry_msgs/Point:nav_msgs/OccupancyGrid"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg" NAME_WE)
add_custom_target(_autoware_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_planning_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg" "geometry_msgs/Quaternion:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathWithLaneId.msg" NAME_WE)
add_custom_target(_autoware_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_planning_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathWithLaneId.msg" "geometry_msgs/Quaternion:nav_msgs/MapMetaData:autoware_planning_msgs/PathPointWithLaneId:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:autoware_planning_msgs/PathPoint:geometry_msgs/Point:nav_msgs/OccupancyGrid"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg" NAME_WE)
add_custom_target(_autoware_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_planning_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg" "geometry_msgs/Quaternion:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:autoware_planning_msgs/PathPoint:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Route.msg" NAME_WE)
add_custom_target(_autoware_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_planning_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Route.msg" "geometry_msgs/Quaternion:autoware_planning_msgs/RouteSection:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg" NAME_WE)
add_custom_target(_autoware_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_planning_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg" ""
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Scenario.msg" NAME_WE)
add_custom_target(_autoware_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_planning_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Scenario.msg" ""
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Trajectory.msg" NAME_WE)
add_custom_target(_autoware_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_planning_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Trajectory.msg" "geometry_msgs/Quaternion:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Accel:geometry_msgs/Point:autoware_planning_msgs/TrajectoryPoint"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg" NAME_WE)
add_custom_target(_autoware_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_planning_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg" "geometry_msgs/Quaternion:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Accel:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/LaneSequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_cpp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_cpp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_cpp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathWithLaneId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_cpp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_cpp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Route.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_cpp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_cpp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Scenario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_cpp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_cpp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(autoware_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(autoware_planning_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(autoware_planning_msgs_generate_messages autoware_planning_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/LaneSequence.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_cpp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Path.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_cpp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_cpp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathWithLaneId.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_cpp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_cpp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Route.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_cpp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_cpp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Scenario.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_cpp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_cpp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_cpp _autoware_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoware_planning_msgs_gencpp)
add_dependencies(autoware_planning_msgs_gencpp autoware_planning_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoware_planning_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/LaneSequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_eus(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_eus(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_eus(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathWithLaneId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_eus(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_eus(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Route.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_eus(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_eus(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Scenario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_eus(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_eus(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(autoware_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(autoware_planning_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(autoware_planning_msgs_generate_messages autoware_planning_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/LaneSequence.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_eus _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Path.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_eus _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_eus _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathWithLaneId.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_eus _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_eus _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Route.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_eus _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_eus _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Scenario.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_eus _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_eus _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_eus _autoware_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoware_planning_msgs_geneus)
add_dependencies(autoware_planning_msgs_geneus autoware_planning_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoware_planning_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/LaneSequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_lisp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_lisp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_lisp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathWithLaneId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_lisp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_lisp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Route.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_lisp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_lisp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Scenario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_lisp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_lisp(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(autoware_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(autoware_planning_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(autoware_planning_msgs_generate_messages autoware_planning_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/LaneSequence.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_lisp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Path.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_lisp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_lisp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathWithLaneId.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_lisp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_lisp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Route.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_lisp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_lisp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Scenario.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_lisp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_lisp _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_lisp _autoware_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoware_planning_msgs_genlisp)
add_dependencies(autoware_planning_msgs_genlisp autoware_planning_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoware_planning_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/LaneSequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_nodejs(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_nodejs(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_nodejs(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathWithLaneId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_nodejs(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_nodejs(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Route.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_nodejs(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_nodejs(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Scenario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_nodejs(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_nodejs(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(autoware_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(autoware_planning_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(autoware_planning_msgs_generate_messages autoware_planning_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/LaneSequence.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_nodejs _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Path.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_nodejs _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_nodejs _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathWithLaneId.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_nodejs _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_nodejs _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Route.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_nodejs _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_nodejs _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Scenario.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_nodejs _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_nodejs _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_nodejs _autoware_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoware_planning_msgs_gennodejs)
add_dependencies(autoware_planning_msgs_gennodejs autoware_planning_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoware_planning_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/LaneSequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_py(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_py(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_py(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathWithLaneId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_py(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_py(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Route.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_py(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_py(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Scenario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_py(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs
)
_generate_msg_py(autoware_planning_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(autoware_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(autoware_planning_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(autoware_planning_msgs_generate_messages autoware_planning_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/LaneSequence.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_py _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Path.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_py _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPoint.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_py _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathWithLaneId.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_py _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/PathPointWithLaneId.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_py _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Route.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_py _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/RouteSection.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_py _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Scenario.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_py _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_py _autoware_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_planning_msgs/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(autoware_planning_msgs_generate_messages_py _autoware_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoware_planning_msgs_genpy)
add_dependencies(autoware_planning_msgs_genpy autoware_planning_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoware_planning_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_planning_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(autoware_planning_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(autoware_planning_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(autoware_planning_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_planning_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(autoware_planning_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(autoware_planning_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(autoware_planning_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_planning_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(autoware_planning_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(autoware_planning_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(autoware_planning_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_planning_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(autoware_planning_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(autoware_planning_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(autoware_planning_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_planning_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(autoware_planning_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(autoware_planning_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(autoware_planning_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
