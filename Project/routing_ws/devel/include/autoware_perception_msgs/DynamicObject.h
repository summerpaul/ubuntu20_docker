// Generated by gencpp from file autoware_perception_msgs/DynamicObject.msg
// DO NOT EDIT!


#ifndef AUTOWARE_PERCEPTION_MSGS_MESSAGE_DYNAMICOBJECT_H
#define AUTOWARE_PERCEPTION_MSGS_MESSAGE_DYNAMICOBJECT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <uuid_msgs/UniqueID.h>
#include <autoware_perception_msgs/Semantic.h>
#include <autoware_perception_msgs/State.h>
#include <autoware_perception_msgs/Shape.h>

namespace autoware_perception_msgs
{
template <class ContainerAllocator>
struct DynamicObject_
{
  typedef DynamicObject_<ContainerAllocator> Type;

  DynamicObject_()
    : id()
    , semantic()
    , state()
    , shape()  {
    }
  DynamicObject_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , semantic(_alloc)
    , state(_alloc)
    , shape(_alloc)  {
  (void)_alloc;
    }



   typedef  ::uuid_msgs::UniqueID_<ContainerAllocator>  _id_type;
  _id_type id;

   typedef  ::autoware_perception_msgs::Semantic_<ContainerAllocator>  _semantic_type;
  _semantic_type semantic;

   typedef  ::autoware_perception_msgs::State_<ContainerAllocator>  _state_type;
  _state_type state;

   typedef  ::autoware_perception_msgs::Shape_<ContainerAllocator>  _shape_type;
  _shape_type shape;





  typedef boost::shared_ptr< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> const> ConstPtr;

}; // struct DynamicObject_

typedef ::autoware_perception_msgs::DynamicObject_<std::allocator<void> > DynamicObject;

typedef boost::shared_ptr< ::autoware_perception_msgs::DynamicObject > DynamicObjectPtr;
typedef boost::shared_ptr< ::autoware_perception_msgs::DynamicObject const> DynamicObjectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_perception_msgs::DynamicObject_<ContainerAllocator1> & lhs, const ::autoware_perception_msgs::DynamicObject_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.semantic == rhs.semantic &&
    lhs.state == rhs.state &&
    lhs.shape == rhs.shape;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_perception_msgs::DynamicObject_<ContainerAllocator1> & lhs, const ::autoware_perception_msgs::DynamicObject_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_perception_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> >
{
  static const char* value()
  {
    return "06b99420afc220a7a51342bd8ed4afe8";
  }

  static const char* value(const ::autoware_perception_msgs::DynamicObject_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x06b99420afc220a7ULL;
  static const uint64_t static_value2 = 0xa51342bd8ed4afe8ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_perception_msgs/DynamicObject";
  }

  static const char* value(const ::autoware_perception_msgs::DynamicObject_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uuid_msgs/UniqueID id\n"
"Semantic semantic\n"
"State state\n"
"Shape shape\n"
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
"MSG: autoware_perception_msgs/State\n"
"geometry_msgs/PoseWithCovariance pose_covariance\n"
"bool orientation_reliable\n"
"geometry_msgs/TwistWithCovariance twist_covariance\n"
"bool twist_reliable\n"
"geometry_msgs/AccelWithCovariance acceleration_covariance\n"
"bool acceleration_reliable\n"
"PredictedPath[] predicted_paths\n"
"\n"
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
"MSG: geometry_msgs/AccelWithCovariance\n"
"# This expresses acceleration in free space with uncertainty.\n"
"\n"
"Accel accel\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Accel\n"
"# This expresses acceleration in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: autoware_perception_msgs/PredictedPath\n"
"geometry_msgs/PoseWithCovarianceStamped[] path\n"
"float64 confidence\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseWithCovarianceStamped\n"
"# This expresses an estimated pose with a reference coordinate frame and timestamp\n"
"\n"
"Header header\n"
"PoseWithCovariance pose\n"
"\n"
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

  static const char* value(const ::autoware_perception_msgs::DynamicObject_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.semantic);
      stream.next(m.state);
      stream.next(m.shape);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DynamicObject_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_perception_msgs::DynamicObject_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_perception_msgs::DynamicObject_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    s << std::endl;
    Printer< ::uuid_msgs::UniqueID_<ContainerAllocator> >::stream(s, indent + "  ", v.id);
    s << indent << "semantic: ";
    s << std::endl;
    Printer< ::autoware_perception_msgs::Semantic_<ContainerAllocator> >::stream(s, indent + "  ", v.semantic);
    s << indent << "state: ";
    s << std::endl;
    Printer< ::autoware_perception_msgs::State_<ContainerAllocator> >::stream(s, indent + "  ", v.state);
    s << indent << "shape: ";
    s << std::endl;
    Printer< ::autoware_perception_msgs::Shape_<ContainerAllocator> >::stream(s, indent + "  ", v.shape);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_PERCEPTION_MSGS_MESSAGE_DYNAMICOBJECT_H