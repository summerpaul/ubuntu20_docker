// Generated by gencpp from file autoware_perception_msgs/TrafficLightRoiArray.msg
// DO NOT EDIT!


#ifndef AUTOWARE_PERCEPTION_MSGS_MESSAGE_TRAFFICLIGHTROIARRAY_H
#define AUTOWARE_PERCEPTION_MSGS_MESSAGE_TRAFFICLIGHTROIARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <autoware_perception_msgs/TrafficLightRoi.h>

namespace autoware_perception_msgs
{
template <class ContainerAllocator>
struct TrafficLightRoiArray_
{
  typedef TrafficLightRoiArray_<ContainerAllocator> Type;

  TrafficLightRoiArray_()
    : header()
    , rois()  {
    }
  TrafficLightRoiArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , rois(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::autoware_perception_msgs::TrafficLightRoi_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::autoware_perception_msgs::TrafficLightRoi_<ContainerAllocator> >::other >  _rois_type;
  _rois_type rois;





  typedef boost::shared_ptr< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> const> ConstPtr;

}; // struct TrafficLightRoiArray_

typedef ::autoware_perception_msgs::TrafficLightRoiArray_<std::allocator<void> > TrafficLightRoiArray;

typedef boost::shared_ptr< ::autoware_perception_msgs::TrafficLightRoiArray > TrafficLightRoiArrayPtr;
typedef boost::shared_ptr< ::autoware_perception_msgs::TrafficLightRoiArray const> TrafficLightRoiArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator1> & lhs, const ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.rois == rhs.rois;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator1> & lhs, const ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace autoware_perception_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bcca094be32c25baf7286433b647e484";
  }

  static const char* value(const ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbcca094be32c25baULL;
  static const uint64_t static_value2 = 0xf7286433b647e484ULL;
};

template<class ContainerAllocator>
struct DataType< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autoware_perception_msgs/TrafficLightRoiArray";
  }

  static const char* value(const ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"autoware_perception_msgs/TrafficLightRoi[] rois\n"
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
"MSG: autoware_perception_msgs/TrafficLightRoi\n"
"sensor_msgs/RegionOfInterest roi\n"
"int32 id\n"
"================================================================================\n"
"MSG: sensor_msgs/RegionOfInterest\n"
"# This message is used to specify a region of interest within an image.\n"
"#\n"
"# When used to specify the ROI setting of the camera when the image was\n"
"# taken, the height and width fields should either match the height and\n"
"# width fields for the associated image; or height = width = 0\n"
"# indicates that the full resolution image was captured.\n"
"\n"
"uint32 x_offset  # Leftmost pixel of the ROI\n"
"                 # (0 if the ROI includes the left edge of the image)\n"
"uint32 y_offset  # Topmost pixel of the ROI\n"
"                 # (0 if the ROI includes the top edge of the image)\n"
"uint32 height    # Height of ROI\n"
"uint32 width     # Width of ROI\n"
"\n"
"# True if a distinct rectified ROI should be calculated from the \"raw\"\n"
"# ROI in this message. Typically this should be False if the full image\n"
"# is captured (ROI not used), and True if a subwindow is captured (ROI\n"
"# used).\n"
"bool do_rectify\n"
;
  }

  static const char* value(const ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.rois);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrafficLightRoiArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autoware_perception_msgs::TrafficLightRoiArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "rois[]" << std::endl;
    for (size_t i = 0; i < v.rois.size(); ++i)
    {
      s << indent << "  rois[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::autoware_perception_msgs::TrafficLightRoi_<ContainerAllocator> >::stream(s, indent + "    ", v.rois[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTOWARE_PERCEPTION_MSGS_MESSAGE_TRAFFICLIGHTROIARRAY_H