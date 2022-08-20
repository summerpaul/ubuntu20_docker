// Generated by gencpp from file dummy_perception_publisher/Object.msg
// DO NOT EDIT!


#ifndef DUMMY_PERCEPTION_PUBLISHER_MESSAGE_OBJECT_H
#define DUMMY_PERCEPTION_PUBLISHER_MESSAGE_OBJECT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <uuid_msgs/UniqueID.h>
#include <dummy_perception_publisher/InitialState.h>
#include <autoware_perception_msgs/Semantic.h>
#include <autoware_perception_msgs/Shape.h>

namespace dummy_perception_publisher
{
template <class ContainerAllocator>
struct Object_
{
  typedef Object_<ContainerAllocator> Type;

  Object_()
    : header()
    , id()
    , initial_state()
    , semantic()
    , shape()
    , action(0)  {
    }
  Object_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , id(_alloc)
    , initial_state(_alloc)
    , semantic(_alloc)
    , shape(_alloc)
    , action(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::uuid_msgs::UniqueID_<ContainerAllocator>  _id_type;
  _id_type id;

   typedef  ::dummy_perception_publisher::InitialState_<ContainerAllocator>  _initial_state_type;
  _initial_state_type initial_state;

   typedef  ::autoware_perception_msgs::Semantic_<ContainerAllocator>  _semantic_type;
  _semantic_type semantic;

   typedef  ::autoware_perception_msgs::Shape_<ContainerAllocator>  _shape_type;
  _shape_type shape;

   typedef int32_t _action_type;
  _action_type action;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(ADD)
  #undef ADD
#endif
#if defined(_WIN32) && defined(MODIFY)
  #undef MODIFY
#endif
#if defined(_WIN32) && defined(DELETE)
  #undef DELETE
#endif
#if defined(_WIN32) && defined(DELETEALL)
  #undef DELETEALL
#endif

  enum {
    ADD = 0u,
    MODIFY = 1u,
    DELETE = 2u,
    DELETEALL = 3u,
  };


  typedef boost::shared_ptr< ::dummy_perception_publisher::Object_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dummy_perception_publisher::Object_<ContainerAllocator> const> ConstPtr;

}; // struct Object_

typedef ::dummy_perception_publisher::Object_<std::allocator<void> > Object;

typedef boost::shared_ptr< ::dummy_perception_publisher::Object > ObjectPtr;
typedef boost::shared_ptr< ::dummy_perception_publisher::Object const> ObjectConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dummy_perception_publisher::Object_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dummy_perception_publisher::Object_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dummy_perception_publisher::Object_<ContainerAllocator1> & lhs, const ::dummy_perception_publisher::Object_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.id == rhs.id &&
    lhs.initial_state == rhs.initial_state &&
    lhs.semantic == rhs.semantic &&
    lhs.shape == rhs.shape &&
    lhs.action == rhs.action;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dummy_perception_publisher::Object_<ContainerAllocator1> & lhs, const ::dummy_perception_publisher::Object_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dummy_perception_publisher

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dummy_perception_publisher::Object_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dummy_perception_publisher::Object_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dummy_perception_publisher::Object_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dummy_perception_publisher::Object_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dummy_perception_publisher::Object_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dummy_perception_publisher::Object_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dummy_perception_publisher::Object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "94b91837e276c90bb55c99d5cd13f705";
  }

  static const char* value(const ::dummy_perception_publisher::Object_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x94b91837e276c90bULL;
  static const uint64_t static_value2 = 0xb55c99d5cd13f705ULL;
};

template<class ContainerAllocator>
struct DataType< ::dummy_perception_publisher::Object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dummy_perception_publisher/Object";
  }

  static const char* value(const ::dummy_perception_publisher::Object_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dummy_perception_publisher::Object_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"uuid_msgs/UniqueID id\n"
"dummy_perception_publisher/InitialState initial_state\n"
"autoware_perception_msgs/Semantic semantic\n"
"autoware_perception_msgs/Shape shape\n"
"\n"
"uint8 ADD=0\n"
"uint8 MODIFY=1\n"
"uint8 DELETE=2\n"
"uint8 DELETEALL=3\n"
"int32 action\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: uuid_msgs/UniqueID\n"
"# A universally unique identifier (UUID).\n"
"#\n"
"#  http://en.wikipedia.org/wiki/Universally_unique_identifier\n"
"#  http://tools.ietf.org/html/rfc4122.html\n"
"\n"
"uint8[16] uuid\n"
"\n"
"================================================================================\n"
"MSG: dummy_perception_publisher/InitialState\n"
"geometry_msgs/PoseWithCovariance pose_covariance\n"
"geometry_msgs/TwistWithCovariance twist_covariance\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseWithCovariance\n"
"# This represents a pose in free space with uncertainty.\n"
"\n"
"Pose pose\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/TwistWithCovariance\n"
"# This expresses velocity in free space with uncertainty.\n"
"\n"
"Twist twist\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: autoware_perception_msgs/Semantic\n"
"uint8 UNKNOWN=0\n"
"uint8 CAR=1\n"
"uint8 TRUCK=2\n"
"uint8 BUS=3\n"
"uint8 BICYCLE=4\n"
"uint8 MOTORBIKE=5\n"
"uint8 PEDESTRIAN=6\n"
"uint8 ANIMAL=7\n"
"uint32 type\n"
"float64 confidence\n"
"================================================================================\n"
"MSG: autoware_perception_msgs/Shape\n"
"uint8 BOUNDING_BOX=0\n"
"uint8 CYLINDER=1\n"
"uint8 POLYGON=2\n"
"\n"
"uint8 type\n"
"geometry_msgs/Vector3 dimensions\n"
"geometry_msgs/Polygon footprint \n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Polygon\n"
"#A specification of a polygon where the first and last points are assumed to be connected\n"
"Point32[] points\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point32\n"
"# This contains the position of a point in free space(with 32 bits of precision).\n"
"# It is recommeded to use Point wherever possible instead of Point32.  \n"
"# \n"
"# This recommendation is to promote interoperability.  \n"
"#\n"
"# This message is designed to take up less space when sending\n"
"# lots of points at once, as in the case of a PointCloud.  \n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
;
  }

  static const char* value(const ::dummy_perception_publisher::Object_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dummy_perception_publisher::Object_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.id);
      stream.next(m.initial_state);
      stream.next(m.semantic);
      stream.next(m.shape);
      stream.next(m.action);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Object_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dummy_perception_publisher::Object_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dummy_perception_publisher::Object_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "id: ";
    s << std::endl;
    Printer< ::uuid_msgs::UniqueID_<ContainerAllocator> >::stream(s, indent + "  ", v.id);
    s << indent << "initial_state: ";
    s << std::endl;
    Printer< ::dummy_perception_publisher::InitialState_<ContainerAllocator> >::stream(s, indent + "  ", v.initial_state);
    s << indent << "semantic: ";
    s << std::endl;
    Printer< ::autoware_perception_msgs::Semantic_<ContainerAllocator> >::stream(s, indent + "  ", v.semantic);
    s << indent << "shape: ";
    s << std::endl;
    Printer< ::autoware_perception_msgs::Shape_<ContainerAllocator> >::stream(s, indent + "  ", v.shape);
    s << indent << "action: ";
    Printer<int32_t>::stream(s, indent + "  ", v.action);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUMMY_PERCEPTION_PUBLISHER_MESSAGE_OBJECT_H