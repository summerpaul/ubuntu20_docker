// Generated by gencpp from file autoware_vehicle_msgs/TurnSignal.msg
// DO NOT EDIT!


#ifndef AUTOWARE_VEHICLE_MSGS_MESSAGE_TURNSIGNAL_H
#define AUTOWARE_VEHICLE_MSGS_MESSAGE_TURNSIGNAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace autoware_vehicle_msgs
{
template <class ContainerAllocator>
struct TurnSignal_
{
  typedef TurnSignal_<ContainerAllocator> Type;

  TurnSignal_()
    : header()
    , data(0)  {
    }
  TurnSignal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , data(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _data_type;
  _data_type data;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(NONE)
  #undef NONE
#endif
#if defined(_WIN32) && defined(LEFT)
  #undef LEFT
#endif
#if defined(_WIN32) && defined(RIGHT)
  #undef RIGHT
#endif
#if defined(_WIN32) && defined(HAZARD)
  #undef HAZARD
#endif

  enum {
    NONE = 0u,
    LEFT = 1u,
    RIGHT = 2u,
    HAZARD = 3u,
  };


  typedef boost::shared_ptr< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> const> ConstPtr;

}; // struct TurnSignal_

typedef ::autoware_vehicle_msgs::TurnSignal_<std::allocator<void> > TurnSignal;

typedef boost::shared_ptr< ::autoware_vehicle_msgs::TurnSignal > TurnSignalPtr;
typedef boost::shared_ptr< ::autoware_vehicle_msgs::TurnSignal const> TurnSignalConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator1> & lhs, const ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator1> & lhs, const ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_vehicle_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d085122414481a8d849d2a54a80f6680";
  }

  static const char* value(const ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd085122414481a8dULL;
  static const uint64_t static_value2 = 0x849d2a54a80f6680ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_vehicle_msgs/TurnSignal";
  }

  static const char* value(const ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"uint8 NONE = 0\n"
"uint8 LEFT = 1\n"
"uint8 RIGHT = 2\n"
"uint8 HAZARD = 3\n"
"\n"
"int32 data\n"
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
;
  }

  static const char* value(const ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TurnSignal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_vehicle_msgs::TurnSignal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "data: ";
    Printer<int32_t>::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_VEHICLE_MSGS_MESSAGE_TURNSIGNAL_H
