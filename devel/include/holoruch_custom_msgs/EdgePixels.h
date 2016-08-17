// Generated by gencpp from file holoruch_custom_msgs/EdgePixels.msg
// DO NOT EDIT!


#ifndef HOLORUCH_CUSTOM_MSGS_MESSAGE_EDGEPIXELS_H
#define HOLORUCH_CUSTOM_MSGS_MESSAGE_EDGEPIXELS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace holoruch_custom_msgs
{
template <class ContainerAllocator>
struct EdgePixels_
{
  typedef EdgePixels_<ContainerAllocator> Type;

  EdgePixels_()
    : header()
    , edge_components()  {
    }
  EdgePixels_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , edge_components(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _edge_components_type;
  _edge_components_type edge_components;




  typedef boost::shared_ptr< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> const> ConstPtr;

}; // struct EdgePixels_

typedef ::holoruch_custom_msgs::EdgePixels_<std::allocator<void> > EdgePixels;

typedef boost::shared_ptr< ::holoruch_custom_msgs::EdgePixels > EdgePixelsPtr;
typedef boost::shared_ptr< ::holoruch_custom_msgs::EdgePixels const> EdgePixelsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace holoruch_custom_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'holoruch_custom_msgs': ['/home/manuel/catkin_ws/src/holoruch/holoruch_custom_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ce21e765bc9a7689ebcc6071732b3394";
  }

  static const char* value(const ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xce21e765bc9a7689ULL;
  static const uint64_t static_value2 = 0xebcc6071732b3394ULL;
};

template<class ContainerAllocator>
struct DataType< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> >
{
  static const char* value()
  {
    return "holoruch_custom_msgs/EdgePixels";
  }

  static const char* value(const ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
int32[] edge_components\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.edge_components);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EdgePixels_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::holoruch_custom_msgs::EdgePixels_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "edge_components[]" << std::endl;
    for (size_t i = 0; i < v.edge_components.size(); ++i)
    {
      s << indent << "  edge_components[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.edge_components[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HOLORUCH_CUSTOM_MSGS_MESSAGE_EDGEPIXELS_H
