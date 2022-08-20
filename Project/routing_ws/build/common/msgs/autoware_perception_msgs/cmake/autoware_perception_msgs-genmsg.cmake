# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "autoware_perception_msgs: 15 messages, 0 services")

set(MSG_I_FLAGS "-Iautoware_perception_msgs:/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition;-Iautoware_perception_msgs:/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Iuuid_msgs:/opt/ros/noetic/share/uuid_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(autoware_perception_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg" "geometry_msgs/Vector3:autoware_perception_msgs/State:geometry_msgs/Twist:geometry_msgs/Point32:std_msgs/Header:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/Point:geometry_msgs/TwistWithCovariance:geometry_msgs/AccelWithCovariance:uuid_msgs/UniqueID:autoware_perception_msgs/Semantic:autoware_perception_msgs/PredictedPath:autoware_perception_msgs/Shape:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Polygon:geometry_msgs/Accel"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectArray.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectArray.msg" "geometry_msgs/Vector3:geometry_msgs/AccelWithCovariance:geometry_msgs/Accel:autoware_perception_msgs/DynamicObject:geometry_msgs/PoseWithCovariance:geometry_msgs/Point:autoware_perception_msgs/PredictedPath:std_msgs/Header:geometry_msgs/Polygon:geometry_msgs/Twist:geometry_msgs/Point32:geometry_msgs/Pose:uuid_msgs/UniqueID:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:autoware_perception_msgs/State:geometry_msgs/TwistWithCovariance:autoware_perception_msgs/Semantic:autoware_perception_msgs/Shape"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg" "geometry_msgs/Vector3:geometry_msgs/Point32:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg" ""
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg" "geometry_msgs/Vector3:geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/Point:geometry_msgs/TwistWithCovariance:geometry_msgs/AccelWithCovariance:autoware_perception_msgs/PredictedPath:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Accel"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg" "sensor_msgs/PointField:sensor_msgs/RegionOfInterest:sensor_msgs/PointCloud2:std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg" "std_msgs/Header:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg" "geometry_msgs/Vector3:sensor_msgs/RegionOfInterest:geometry_msgs/AccelWithCovariance:geometry_msgs/Accel:autoware_perception_msgs/DynamicObject:geometry_msgs/PoseWithCovariance:geometry_msgs/Point:autoware_perception_msgs/PredictedPath:sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header:geometry_msgs/Polygon:geometry_msgs/Twist:geometry_msgs/Point32:geometry_msgs/Pose:uuid_msgs/UniqueID:autoware_perception_msgs/Feature:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:autoware_perception_msgs/State:geometry_msgs/TwistWithCovariance:autoware_perception_msgs/Semantic:autoware_perception_msgs/Shape"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeatureArray.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeatureArray.msg" "geometry_msgs/Vector3:sensor_msgs/RegionOfInterest:geometry_msgs/AccelWithCovariance:autoware_perception_msgs/DynamicObjectWithFeature:geometry_msgs/Accel:autoware_perception_msgs/DynamicObject:geometry_msgs/PoseWithCovariance:geometry_msgs/Point:autoware_perception_msgs/PredictedPath:sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header:geometry_msgs/Polygon:geometry_msgs/Twist:geometry_msgs/Point32:geometry_msgs/Pose:uuid_msgs/UniqueID:autoware_perception_msgs/Feature:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovarianceStamped:autoware_perception_msgs/State:geometry_msgs/TwistWithCovariance:autoware_perception_msgs/Semantic:autoware_perception_msgs/Shape"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg" ""
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg" "sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoiArray.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoiArray.msg" "autoware_perception_msgs/TrafficLightRoi:sensor_msgs/RegionOfInterest:std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg" "autoware_perception_msgs/LampState"
)

get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightStateArray.msg" NAME_WE)
add_custom_target(_autoware_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "autoware_perception_msgs" "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightStateArray.msg" "std_msgs/Header:autoware_perception_msgs/TrafficLightState:autoware_perception_msgs/LampState"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeatureArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoiArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_cpp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightStateArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(autoware_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(autoware_perception_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(autoware_perception_msgs_generate_messages autoware_perception_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeatureArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoiArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightStateArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_cpp _autoware_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoware_perception_msgs_gencpp)
add_dependencies(autoware_perception_msgs_gencpp autoware_perception_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoware_perception_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeatureArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoiArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_eus(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightStateArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(autoware_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(autoware_perception_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(autoware_perception_msgs_generate_messages autoware_perception_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeatureArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoiArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightStateArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_eus _autoware_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoware_perception_msgs_geneus)
add_dependencies(autoware_perception_msgs_geneus autoware_perception_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoware_perception_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeatureArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoiArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_lisp(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightStateArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(autoware_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(autoware_perception_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(autoware_perception_msgs_generate_messages autoware_perception_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeatureArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoiArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightStateArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_lisp _autoware_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoware_perception_msgs_genlisp)
add_dependencies(autoware_perception_msgs_genlisp autoware_perception_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoware_perception_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeatureArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoiArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_nodejs(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightStateArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(autoware_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(autoware_perception_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(autoware_perception_msgs_generate_messages autoware_perception_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeatureArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoiArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightStateArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_nodejs _autoware_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoware_perception_msgs_gennodejs)
add_dependencies(autoware_perception_msgs_gennodejs autoware_perception_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoware_perception_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeatureArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoiArray.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)
_generate_msg_py(autoware_perception_msgs
  "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightStateArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg;/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(autoware_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(autoware_perception_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(autoware_perception_msgs_generate_messages autoware_perception_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeatureArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoiArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightStateArray.msg" NAME_WE)
add_dependencies(autoware_perception_msgs_generate_messages_py _autoware_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(autoware_perception_msgs_genpy)
add_dependencies(autoware_perception_msgs_genpy autoware_perception_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS autoware_perception_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/autoware_perception_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(autoware_perception_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(autoware_perception_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(autoware_perception_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET uuid_msgs_generate_messages_cpp)
  add_dependencies(autoware_perception_msgs_generate_messages_cpp uuid_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/autoware_perception_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(autoware_perception_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(autoware_perception_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(autoware_perception_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET uuid_msgs_generate_messages_eus)
  add_dependencies(autoware_perception_msgs_generate_messages_eus uuid_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/autoware_perception_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(autoware_perception_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(autoware_perception_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(autoware_perception_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET uuid_msgs_generate_messages_lisp)
  add_dependencies(autoware_perception_msgs_generate_messages_lisp uuid_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/autoware_perception_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(autoware_perception_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(autoware_perception_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(autoware_perception_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET uuid_msgs_generate_messages_nodejs)
  add_dependencies(autoware_perception_msgs_generate_messages_nodejs uuid_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/autoware_perception_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(autoware_perception_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(autoware_perception_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(autoware_perception_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET uuid_msgs_generate_messages_py)
  add_dependencies(autoware_perception_msgs_generate_messages_py uuid_msgs_generate_messages_py)
endif()
