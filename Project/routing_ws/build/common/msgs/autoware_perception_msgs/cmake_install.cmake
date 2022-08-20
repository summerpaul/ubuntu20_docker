# Install script for directory: /home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/Project/routing_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autoware_perception_msgs/msg/object_recognition" TYPE FILE FILES
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObject.msg"
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectArray.msg"
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Shape.msg"
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Semantic.msg"
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/State.msg"
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/Feature.msg"
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg"
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeature.msg"
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/DynamicObjectWithFeatureArray.msg"
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/object_recognition/PredictedPath.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autoware_perception_msgs/msg/traffic_light_recognition" TYPE FILE FILES
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/LampState.msg"
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoi.msg"
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightRoiArray.msg"
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightState.msg"
    "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/msg/traffic_light_recognition/TrafficLightStateArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autoware_perception_msgs/cmake" TYPE FILE FILES "/home/ubuntu/Project/routing_ws/build/common/msgs/autoware_perception_msgs/catkin_generated/installspace/autoware_perception_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ubuntu/Project/routing_ws/devel/include/autoware_perception_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ubuntu/Project/routing_ws/devel/share/roseus/ros/autoware_perception_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ubuntu/Project/routing_ws/devel/share/common-lisp/ros/autoware_perception_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ubuntu/Project/routing_ws/devel/share/gennodejs/ros/autoware_perception_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ubuntu/Project/routing_ws/devel/lib/python3/dist-packages/autoware_perception_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ubuntu/Project/routing_ws/devel/lib/python3/dist-packages/autoware_perception_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/Project/routing_ws/build/common/msgs/autoware_perception_msgs/catkin_generated/installspace/autoware_perception_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autoware_perception_msgs/cmake" TYPE FILE FILES "/home/ubuntu/Project/routing_ws/build/common/msgs/autoware_perception_msgs/catkin_generated/installspace/autoware_perception_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autoware_perception_msgs/cmake" TYPE FILE FILES
    "/home/ubuntu/Project/routing_ws/build/common/msgs/autoware_perception_msgs/catkin_generated/installspace/autoware_perception_msgsConfig.cmake"
    "/home/ubuntu/Project/routing_ws/build/common/msgs/autoware_perception_msgs/catkin_generated/installspace/autoware_perception_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autoware_perception_msgs" TYPE FILE FILES "/home/ubuntu/Project/routing_ws/src/common/msgs/autoware_perception_msgs/package.xml")
endif()

