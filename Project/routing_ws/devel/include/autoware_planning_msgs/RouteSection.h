// Generated by gencpp from file autoware_planning_msgs/RouteSection.msg
// DO NOT EDIT!


#ifndef AUTOWARE_PLANNING_MSGS_MESSAGE_ROUTESECTION_H
#define AUTOWARE_PLANNING_MSGS_MESSAGE_ROUTESECTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace autoware_planning_msgs
{
template <class ContainerAllocator>
struct RouteSection_
{
  typedef RouteSection_<ContainerAllocator> Type;

  RouteSection_()
    : lane_ids()
    , preferred_lane_id(0)
    , continued_lane_ids()  {
    }
  RouteSection_(const ContainerAllocator& _alloc)
    : lane_ids(_alloc)
    , preferred_lane_id(0)
    , continued_lane_ids(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _lane_ids_type;
  _lane_ids_type lane_ids;

   typedef int64_t _preferred_lane_id_type;
  _preferred_lane_id_type preferred_lane_id;

   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _continued_lane_ids_type;
  _continued_lane_ids_type continued_lane_ids;





  typedef boost::shared_ptr< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> const> ConstPtr;

}; // struct RouteSection_

typedef ::autoware_planning_msgs::RouteSection_<std::allocator<void> > RouteSection;

typedef boost::shared_ptr< ::autoware_planning_msgs::RouteSection > RouteSectionPtr;
typedef boost::shared_ptr< ::autoware_planning_msgs::RouteSection const> RouteSectionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_planning_msgs::RouteSection_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_planning_msgs::RouteSection_<ContainerAllocator1> & lhs, const ::autoware_planning_msgs::RouteSection_<ContainerAllocator2> & rhs)
{
  return lhs.lane_ids == rhs.lane_ids &&
    lhs.preferred_lane_id == rhs.preferred_lane_id &&
    lhs.continued_lane_ids == rhs.continued_lane_ids;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_planning_msgs::RouteSection_<ContainerAllocator1> & lhs, const ::autoware_planning_msgs::RouteSection_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_planning_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f2f5aadafa97ec1dda39866d5941c987";
  }

  static const char* value(const ::autoware_planning_msgs::RouteSection_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf2f5aadafa97ec1dULL;
  static const uint64_t static_value2 = 0xda39866d5941c987ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_planning_msgs/RouteSection";
  }

  static const char* value(const ::autoware_planning_msgs::RouteSection_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64[] lane_ids\n"
"int64 preferred_lane_id\n"
"int64[] continued_lane_ids\n"
;
  }

  static const char* value(const ::autoware_planning_msgs::RouteSection_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lane_ids);
      stream.next(m.preferred_lane_id);
      stream.next(m.continued_lane_ids);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RouteSection_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_planning_msgs::RouteSection_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_planning_msgs::RouteSection_<ContainerAllocator>& v)
  {
    s << indent << "lane_ids[]" << std::endl;
    for (size_t i = 0; i < v.lane_ids.size(); ++i)
    {
      s << indent << "  lane_ids[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.lane_ids[i]);
    }
    s << indent << "preferred_lane_id: ";
    Printer<int64_t>::stream(s, indent + "  ", v.preferred_lane_id);
    s << indent << "continued_lane_ids[]" << std::endl;
    for (size_t i = 0; i < v.continued_lane_ids.size(); ++i)
    {
      s << indent << "  continued_lane_ids[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.continued_lane_ids[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_PLANNING_MSGS_MESSAGE_ROUTESECTION_H