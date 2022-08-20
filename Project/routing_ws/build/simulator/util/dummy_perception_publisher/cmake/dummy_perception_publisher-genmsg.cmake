# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dummy_perception_publisher: 2 messages, 0 services")

set(MSG_I_FLAGS "-Idummy_perception_publisher:/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iautoware_perception_msgs:/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition;-Iautoware_perception_msgs:/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition;-Iuuid_msgs:/opt/ros/noetic/share/uuid_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dummy_perception_publisher_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/Object.msg" NAME_WE)
add_custom_target(_dummy_perception_publisher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dummy_perception_publisher" "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/Object.msg" "geometry_msgs/Quaternion:autoware_perception_msgs/Semantic:geometry_msgs/Vector3:uuid_msgs/UniqueID:autoware_perception_msgs/Shape:geometry_msgs/Point:geometry_msgs/Point32:geometry_msgs/Pose:dummy_perception_publisher/InitialState:geometry_msgs/Polygon:geometry_msgs/PoseWithCovariance:std_msgs/Header:geometry_msgs/TwistWithCovariance:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg" NAME_WE)
add_custom_target(_dummy_perception_publisher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dummy_perception_publisher" "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg" "geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/TwistWithCovariance:geometry_msgs/Twist"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dummy_perception_publisher
  "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dummy_perception_publisher
)
_generate_msg_cpp(dummy_perception_publisher
  "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dummy_perception_publisher
)

### Generating Services

### Generating Module File
_generate_module_cpp(dummy_perception_publisher
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dummy_perception_publisher
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dummy_perception_publisher_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dummy_perception_publisher_generate_messages dummy_perception_publisher_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/Object.msg" NAME_WE)
add_dependencies(dummy_perception_publisher_generate_messages_cpp _dummy_perception_publisher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg" NAME_WE)
add_dependencies(dummy_perception_publisher_generate_messages_cpp _dummy_perception_publisher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dummy_perception_publisher_gencpp)
add_dependencies(dummy_perception_publisher_gencpp dummy_perception_publisher_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dummy_perception_publisher_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dummy_perception_publisher
  "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dummy_perception_publisher
)
_generate_msg_eus(dummy_perception_publisher
  "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dummy_perception_publisher
)

### Generating Services

### Generating Module File
_generate_module_eus(dummy_perception_publisher
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dummy_perception_publisher
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dummy_perception_publisher_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dummy_perception_publisher_generate_messages dummy_perception_publisher_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/Object.msg" NAME_WE)
add_dependencies(dummy_perception_publisher_generate_messages_eus _dummy_perception_publisher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg" NAME_WE)
add_dependencies(dummy_perception_publisher_generate_messages_eus _dummy_perception_publisher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dummy_perception_publisher_geneus)
add_dependencies(dummy_perception_publisher_geneus dummy_perception_publisher_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dummy_perception_publisher_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dummy_perception_publisher
  "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dummy_perception_publisher
)
_generate_msg_lisp(dummy_perception_publisher
  "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dummy_perception_publisher
)

### Generating Services

### Generating Module File
_generate_module_lisp(dummy_perception_publisher
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dummy_perception_publisher
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dummy_perception_publisher_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dummy_perception_publisher_generate_messages dummy_perception_publisher_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/Object.msg" NAME_WE)
add_dependencies(dummy_perception_publisher_generate_messages_lisp _dummy_perception_publisher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg" NAME_WE)
add_dependencies(dummy_perception_publisher_generate_messages_lisp _dummy_perception_publisher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dummy_perception_publisher_genlisp)
add_dependencies(dummy_perception_publisher_genlisp dummy_perception_publisher_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dummy_perception_publisher_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dummy_perception_publisher
  "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dummy_perception_publisher
)
_generate_msg_nodejs(dummy_perception_publisher
  "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dummy_perception_publisher
)

### Generating Services

### Generating Module File
_generate_module_nodejs(dummy_perception_publisher
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dummy_perception_publisher
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dummy_perception_publisher_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dummy_perception_publisher_generate_messages dummy_perception_publisher_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/Object.msg" NAME_WE)
add_dependencies(dummy_perception_publisher_generate_messages_nodejs _dummy_perception_publisher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg" NAME_WE)
add_dependencies(dummy_perception_publisher_generate_messages_nodejs _dummy_perception_publisher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dummy_perception_publisher_gennodejs)
add_dependencies(dummy_perception_publisher_gennodejs dummy_perception_publisher_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dummy_perception_publisher_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dummy_perception_publisher
  "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dummy_perception_publisher
)
_generate_msg_py(dummy_perception_publisher
  "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dummy_perception_publisher
)

### Generating Services

### Generating Module File
_generate_module_py(dummy_perception_publisher
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dummy_perception_publisher
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dummy_perception_publisher_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dummy_perception_publisher_generate_messages dummy_perception_publisher_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/Object.msg" NAME_WE)
add_dependencies(dummy_perception_publisher_generate_messages_py _dummy_perception_publisher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/simulator/util/dummy_perception_publisher/msg/InitialState.msg" NAME_WE)
add_dependencies(dummy_perception_publisher_generate_messages_py _dummy_perception_publisher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dummy_perception_publisher_genpy)
add_dependencies(dummy_perception_publisher_genpy dummy_perception_publisher_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dummy_perception_publisher_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dummy_perception_publisher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dummy_perception_publisher
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dummy_perception_publisher_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(dummy_perception_publisher_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET autoware_perception_msgs_generate_messages_cpp)
  add_dependencies(dummy_perception_publisher_generate_messages_cpp autoware_perception_msgs_generate_messages_cpp)
endif()
if(TARGET uuid_msgs_generate_messages_cpp)
  add_dependencies(dummy_perception_publisher_generate_messages_cpp uuid_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dummy_perception_publisher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dummy_perception_publisher
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dummy_perception_publisher_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(dummy_perception_publisher_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET autoware_perception_msgs_generate_messages_eus)
  add_dependencies(dummy_perception_publisher_generate_messages_eus autoware_perception_msgs_generate_messages_eus)
endif()
if(TARGET uuid_msgs_generate_messages_eus)
  add_dependencies(dummy_perception_publisher_generate_messages_eus uuid_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dummy_perception_publisher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dummy_perception_publisher
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dummy_perception_publisher_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(dummy_perception_publisher_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET autoware_perception_msgs_generate_messages_lisp)
  add_dependencies(dummy_perception_publisher_generate_messages_lisp autoware_perception_msgs_generate_messages_lisp)
endif()
if(TARGET uuid_msgs_generate_messages_lisp)
  add_dependencies(dummy_perception_publisher_generate_messages_lisp uuid_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dummy_perception_publisher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dummy_perception_publisher
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dummy_perception_publisher_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(dummy_perception_publisher_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET autoware_perception_msgs_generate_messages_nodejs)
  add_dependencies(dummy_perception_publisher_generate_messages_nodejs autoware_perception_msgs_generate_messages_nodejs)
endif()
if(TARGET uuid_msgs_generate_messages_nodejs)
  add_dependencies(dummy_perception_publisher_generate_messages_nodejs uuid_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dummy_perception_publisher)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dummy_perception_publisher\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dummy_perception_publisher
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dummy_perception_publisher_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(dummy_perception_publisher_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET autoware_perception_msgs_generate_messages_py)
  add_dependencies(dummy_perception_publisher_generate_messages_py autoware_perception_msgs_generate_messages_py)
endif()
if(TARGET uuid_msgs_generate_messages_py)
  add_dependencies(dummy_perception_publisher_generate_messages_py uuid_msgs_generate_messages_py)
endif()
