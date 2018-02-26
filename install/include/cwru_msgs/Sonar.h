// Generated by gencpp from file cwru_msgs/Sonar.msg
// DO NOT EDIT!


#ifndef CWRU_MSGS_MESSAGE_SONAR_H
#define CWRU_MSGS_MESSAGE_SONAR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace cwru_msgs
{
template <class ContainerAllocator>
struct Sonar_
{
  typedef Sonar_<ContainerAllocator> Type;

  Sonar_()
    : header()
    , dist(0.0)  {
    }
  Sonar_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , dist(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _dist_type;
  _dist_type dist;




  typedef boost::shared_ptr< ::cwru_msgs::Sonar_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cwru_msgs::Sonar_<ContainerAllocator> const> ConstPtr;

}; // struct Sonar_

typedef ::cwru_msgs::Sonar_<std::allocator<void> > Sonar;

typedef boost::shared_ptr< ::cwru_msgs::Sonar > SonarPtr;
typedef boost::shared_ptr< ::cwru_msgs::Sonar const> SonarConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cwru_msgs::Sonar_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cwru_msgs::Sonar_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cwru_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'cwru_msgs': ['/home/toshiki/ros_ws/src/cwru/cwru_msgs/cwru_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cwru_msgs::Sonar_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cwru_msgs::Sonar_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cwru_msgs::Sonar_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cwru_msgs::Sonar_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cwru_msgs::Sonar_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cwru_msgs::Sonar_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cwru_msgs::Sonar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "32a7fd24a5630b5643e0d1882893197a";
  }

  static const char* value(const ::cwru_msgs::Sonar_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x32a7fd24a5630b56ULL;
  static const uint64_t static_value2 = 0x43e0d1882893197aULL;
};

template<class ContainerAllocator>
struct DataType< ::cwru_msgs::Sonar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cwru_msgs/Sonar";
  }

  static const char* value(const ::cwru_msgs::Sonar_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cwru_msgs::Sonar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
float32 dist\n\
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

  static const char* value(const ::cwru_msgs::Sonar_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cwru_msgs::Sonar_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.dist);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Sonar_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cwru_msgs::Sonar_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cwru_msgs::Sonar_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "dist: ";
    Printer<float>::stream(s, indent + "  ", v.dist);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CWRU_MSGS_MESSAGE_SONAR_H