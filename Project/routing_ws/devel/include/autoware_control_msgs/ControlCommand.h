// Generated by gencpp from file autoware_control_msgs/ControlCommand.msg
// DO NOT EDIT!


#ifndef AUTOWARE_CONTROL_MSGS_MESSAGE_CONTROLCOMMAND_H
#define AUTOWARE_CONTROL_MSGS_MESSAGE_CONTROLCOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace autoware_control_msgs
{
template <class ContainerAllocator>
struct ControlCommand_
{
  typedef ControlCommand_<ContainerAllocator> Type;

  ControlCommand_()
    : steering_angle(0.0)
    , steering_angle_velocity(0.0)
    , velocity(0.0)
    , acceleration(0.0)  {
    }
  ControlCommand_(const ContainerAllocator& _alloc)
    : steering_angle(0.0)
    , steering_angle_velocity(0.0)
    , velocity(0.0)
    , acceleration(0.0)  {
  (void)_alloc;
    }



   typedef double _steering_angle_type;
  _steering_angle_type steering_angle;

   typedef double _steering_angle_velocity_type;
  _steering_angle_velocity_type steering_angle_velocity;

   typedef double _velocity_type;
  _velocity_type velocity;

   typedef double _acceleration_type;
  _acceleration_type acceleration;





  typedef boost::shared_ptr< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> const> ConstPtr;

}; // struct ControlCommand_

typedef ::autoware_control_msgs::ControlCommand_<std::allocator<void> > ControlCommand;

typedef boost::shared_ptr< ::autoware_control_msgs::ControlCommand > ControlCommandPtr;
typedef boost::shared_ptr< ::autoware_control_msgs::ControlCommand const> ControlCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_control_msgs::ControlCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_control_msgs::ControlCommand_<ContainerAllocator1> & lhs, const ::autoware_control_msgs::ControlCommand_<ContainerAllocator2> & rhs)
{
  return lhs.steering_angle == rhs.steering_angle &&
    lhs.steering_angle_velocity == rhs.steering_angle_velocity &&
    lhs.velocity == rhs.velocity &&
    lhs.acceleration == rhs.acceleration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_control_msgs::ControlCommand_<ContainerAllocator1> & lhs, const ::autoware_control_msgs::ControlCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beac3f978f000d5cd26de68de9ebce17";
  }

  static const char* value(const ::autoware_control_msgs::ControlCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbeac3f978f000d5cULL;
  static const uint64_t static_value2 = 0xd26de68de9ebce17ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_control_msgs/ControlCommand";
  }

  static const char* value(const ::autoware_control_msgs::ControlCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 steering_angle\n"
"float64 steering_angle_velocity\n"
"float64 velocity\n"
"float64 acceleration\n"
;
  }

  static const char* value(const ::autoware_control_msgs::ControlCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.steering_angle);
      stream.next(m.steering_angle_velocity);
      stream.next(m.velocity);
      stream.next(m.acceleration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControlCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_control_msgs::ControlCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_control_msgs::ControlCommand_<ContainerAllocator>& v)
  {
    s << indent << "steering_angle: ";
    Printer<double>::stream(s, indent + "  ", v.steering_angle);
    s << indent << "steering_angle_velocity: ";
    Printer<double>::stream(s, indent + "  ", v.steering_angle_velocity);
    s << indent << "velocity: ";
    Printer<double>::stream(s, indent + "  ", v.velocity);
    s << indent << "acceleration: ";
    Printer<double>::stream(s, indent + "  ", v.acceleration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_CONTROL_MSGS_MESSAGE_CONTROLCOMMAND_H
