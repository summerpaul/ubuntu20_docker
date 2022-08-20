// Generated by gencpp from file autoware_vehicle_msgs/RawControlCommand.msg
// DO NOT EDIT!


#ifndef AUTOWARE_VEHICLE_MSGS_MESSAGE_RAWCONTROLCOMMAND_H
#define AUTOWARE_VEHICLE_MSGS_MESSAGE_RAWCONTROLCOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace autoware_vehicle_msgs
{
template <class ContainerAllocator>
struct RawControlCommand_
{
  typedef RawControlCommand_<ContainerAllocator> Type;

  RawControlCommand_()
    : steering_angle(0.0)
    , steering_angle_velocity(0.0)
    , throttle(0.0)
    , brake(0.0)  {
    }
  RawControlCommand_(const ContainerAllocator& _alloc)
    : steering_angle(0.0)
    , steering_angle_velocity(0.0)
    , throttle(0.0)
    , brake(0.0)  {
  (void)_alloc;
    }



   typedef double _steering_angle_type;
  _steering_angle_type steering_angle;

   typedef double _steering_angle_velocity_type;
  _steering_angle_velocity_type steering_angle_velocity;

   typedef double _throttle_type;
  _throttle_type throttle;

   typedef double _brake_type;
  _brake_type brake;





  typedef boost::shared_ptr< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> const> ConstPtr;

}; // struct RawControlCommand_

typedef ::autoware_vehicle_msgs::RawControlCommand_<std::allocator<void> > RawControlCommand;

typedef boost::shared_ptr< ::autoware_vehicle_msgs::RawControlCommand > RawControlCommandPtr;
typedef boost::shared_ptr< ::autoware_vehicle_msgs::RawControlCommand const> RawControlCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator1> & lhs, const ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator2> & rhs)
{
  return lhs.steering_angle == rhs.steering_angle &&
    lhs.steering_angle_velocity == rhs.steering_angle_velocity &&
    lhs.throttle == rhs.throttle &&
    lhs.brake == rhs.brake;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator1> & lhs, const ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_vehicle_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8d9ebe05823053d6cd0059203f4d5e53";
  }

  static const char* value(const ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8d9ebe05823053d6ULL;
  static const uint64_t static_value2 = 0xcd0059203f4d5e53ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_vehicle_msgs/RawControlCommand";
  }

  static const char* value(const ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 steering_angle\n"
"float64 steering_angle_velocity\n"
"float64 throttle\n"
"float64 brake\n"
;
  }

  static const char* value(const ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.steering_angle);
      stream.next(m.steering_angle_velocity);
      stream.next(m.throttle);
      stream.next(m.brake);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RawControlCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_vehicle_msgs::RawControlCommand_<ContainerAllocator>& v)
  {
    s << indent << "steering_angle: ";
    Printer<double>::stream(s, indent + "  ", v.steering_angle);
    s << indent << "steering_angle_velocity: ";
    Printer<double>::stream(s, indent + "  ", v.steering_angle_velocity);
    s << indent << "throttle: ";
    Printer<double>::stream(s, indent + "  ", v.throttle);
    s << indent << "brake: ";
    Printer<double>::stream(s, indent + "  ", v.brake);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_VEHICLE_MSGS_MESSAGE_RAWCONTROLCOMMAND_H