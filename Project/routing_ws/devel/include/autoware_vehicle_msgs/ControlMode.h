// Generated by gencpp from file autoware_vehicle_msgs/ControlMode.msg
// DO NOT EDIT!


#ifndef AUTOWARE_VEHICLE_MSGS_MESSAGE_CONTROLMODE_H
#define AUTOWARE_VEHICLE_MSGS_MESSAGE_CONTROLMODE_H


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
struct ControlMode_
{
  typedef ControlMode_<ContainerAllocator> Type;

  ControlMode_()
    : header()
    , data(0)  {
    }
  ControlMode_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , data(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _data_type;
  _data_type data;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(MANUAL)
  #undef MANUAL
#endif
#if defined(_WIN32) && defined(AUTO)
  #undef AUTO
#endif
#if defined(_WIN32) && defined(AUTO_STEER_ONLY)
  #undef AUTO_STEER_ONLY
#endif
#if defined(_WIN32) && defined(AUTO_PEDAL_ONLY)
  #undef AUTO_PEDAL_ONLY
#endif

  enum {
    MANUAL = 0u,
    AUTO = 1u,
    AUTO_STEER_ONLY = 2u,
    AUTO_PEDAL_ONLY = 3u,
  };


  typedef boost::shared_ptr< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> const> ConstPtr;

}; // struct ControlMode_

typedef ::autoware_vehicle_msgs::ControlMode_<std::allocator<void> > ControlMode;

typedef boost::shared_ptr< ::autoware_vehicle_msgs::ControlMode > ControlModePtr;
typedef boost::shared_ptr< ::autoware_vehicle_msgs::ControlMode const> ControlModeConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator1> & lhs, const ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator1> & lhs, const ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_vehicle_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "88e8ae3590252d1a5403cfb378321fe1";
  }

  static const char* value(const ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x88e8ae3590252d1aULL;
  static const uint64_t static_value2 = 0x5403cfb378321fe1ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_vehicle_msgs/ControlMode";
  }

  static const char* value(const ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"uint8 MANUAL = 0\n"
"uint8 AUTO = 1\n"
"uint8 AUTO_STEER_ONLY = 2\n"
"uint8 AUTO_PEDAL_ONLY = 3\n"
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

  static const char* value(const ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControlMode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_vehicle_msgs::ControlMode_<ContainerAllocator>& v)
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

#endif // AUTOWARE_VEHICLE_MSGS_MESSAGE_CONTROLMODE_H
