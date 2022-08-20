// Generated by gencpp from file autoware_perception_msgs/TrafficLightStateArray.msg
// DO NOT EDIT!


#ifndef AUTOWARE_PERCEPTION_MSGS_MESSAGE_TRAFFICLIGHTSTATEARRAY_H
#define AUTOWARE_PERCEPTION_MSGS_MESSAGE_TRAFFICLIGHTSTATEARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <autoware_perception_msgs/TrafficLightState.h>

namespace autoware_perception_msgs
{
template <class ContainerAllocator>
struct TrafficLightStateArray_
{
  typedef TrafficLightStateArray_<ContainerAllocator> Type;

  TrafficLightStateArray_()
    : header()
    , states()  {
    }
  TrafficLightStateArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , states(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::autoware_perception_msgs::TrafficLightState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::autoware_perception_msgs::TrafficLightState_<ContainerAllocator> >::other >  _states_type;
  _states_type states;





  typedef boost::shared_ptr< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> const> ConstPtr;

}; // struct TrafficLightStateArray_

typedef ::autoware_perception_msgs::TrafficLightStateArray_<std::allocator<void> > TrafficLightStateArray;

typedef boost::shared_ptr< ::autoware_perception_msgs::TrafficLightStateArray > TrafficLightStateArrayPtr;
typedef boost::shared_ptr< ::autoware_perception_msgs::TrafficLightStateArray const> TrafficLightStateArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator1> & lhs, const ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.states == rhs.states;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator1> & lhs, const ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_perception_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "222d53a44e10b32a97b360149fb3e9b1";
  }

  static const char* value(const ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x222d53a44e10b32aULL;
  static const uint64_t static_value2 = 0x97b360149fb3e9b1ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_perception_msgs/TrafficLightStateArray";
  }

  static const char* value(const ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"autoware_perception_msgs/TrafficLightState[] states\n"
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
"MSG: autoware_perception_msgs/TrafficLightState\n"
"autoware_perception_msgs/LampState[] lamp_states\n"
"int32 id\n"
"================================================================================\n"
"MSG: autoware_perception_msgs/LampState\n"
"uint8 UNKNOWN=0\n"
"uint8 RED=1\n"
"uint8 GREEN=2\n"
"uint8 YELLOW=3\n"
"uint8 LEFT=4\n"
"uint8 RIGHT=5\n"
"uint8 UP=6\n"
"uint8 DOWN=7\n"
"uint32 type\n"
"float32 confidence\n"
;
  }

  static const char* value(const ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.states);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrafficLightStateArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_perception_msgs::TrafficLightStateArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "states[]" << std::endl;
    for (size_t i = 0; i < v.states.size(); ++i)
    {
      s << indent << "  states[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::autoware_perception_msgs::TrafficLightState_<ContainerAllocator> >::stream(s, indent + "    ", v.states[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_PERCEPTION_MSGS_MESSAGE_TRAFFICLIGHTSTATEARRAY_H