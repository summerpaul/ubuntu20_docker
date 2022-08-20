// Generated by gencpp from file autoware_planning_msgs/Route.msg
// DO NOT EDIT!


#ifndef AUTOWARE_PLANNING_MSGS_MESSAGE_ROUTE_H
#define AUTOWARE_PLANNING_MSGS_MESSAGE_ROUTE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose.h>
#include <autoware_planning_msgs/RouteSection.h>

namespace autoware_planning_msgs
{
template <class ContainerAllocator>
struct Route_
{
  typedef Route_<ContainerAllocator> Type;

  Route_()
    : header()
    , goal_pose()
    , route_sections()  {
    }
  Route_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_pose(_alloc)
    , route_sections(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _goal_pose_type;
  _goal_pose_type goal_pose;

   typedef std::vector< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> >::other >  _route_sections_type;
  _route_sections_type route_sections;





  typedef boost::shared_ptr< ::autoware_planning_msgs::Route_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_planning_msgs::Route_<ContainerAllocator> const> ConstPtr;

}; // struct Route_

typedef ::autoware_planning_msgs::Route_<std::allocator<void> > Route;

typedef boost::shared_ptr< ::autoware_planning_msgs::Route > RoutePtr;
typedef boost::shared_ptr< ::autoware_planning_msgs::Route const> RouteConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_planning_msgs::Route_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_planning_msgs::Route_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_planning_msgs::Route_<ContainerAllocator1> & lhs, const ::autoware_planning_msgs::Route_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_pose == rhs.goal_pose &&
    lhs.route_sections == rhs.route_sections;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_planning_msgs::Route_<ContainerAllocator1> & lhs, const ::autoware_planning_msgs::Route_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_planning_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autoware_planning_msgs::Route_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_planning_msgs::Route_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_planning_msgs::Route_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_planning_msgs::Route_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_planning_msgs::Route_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_planning_msgs::Route_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_planning_msgs::Route_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a97cc0d08212f1aeb6ccf49a5a9f422b";
  }

  static const char* value(const ::autoware_planning_msgs::Route_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa97cc0d08212f1aeULL;
  static const uint64_t static_value2 = 0xb6ccf49a5a9f422bULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_planning_msgs::Route_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_planning_msgs/Route";
  }

  static const char* value(const ::autoware_planning_msgs::Route_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_planning_msgs::Route_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"geometry_msgs/Pose goal_pose\n"
"autoware_planning_msgs/RouteSection[] route_sections\n"
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
"MSG: autoware_planning_msgs/RouteSection\n"
"int64[] lane_ids\n"
"int64 preferred_lane_id\n"
"int64[] continued_lane_ids\n"
;
  }

  static const char* value(const ::autoware_planning_msgs::Route_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_planning_msgs::Route_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_pose);
      stream.next(m.route_sections);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Route_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_planning_msgs::Route_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_planning_msgs::Route_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_pose);
    s << indent << "route_sections[]" << std::endl;
    for (size_t i = 0; i < v.route_sections.size(); ++i)
    {
      s << indent << "  route_sections[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> >::stream(s, indent + "    ", v.route_sections[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_PLANNING_MSGS_MESSAGE_ROUTE_H
