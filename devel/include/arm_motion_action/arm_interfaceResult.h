// Generated by gencpp from file arm_motion_action/arm_interfaceResult.msg
// DO NOT EDIT!


#ifndef ARM_MOTION_ACTION_MESSAGE_ARM_INTERFACERESULT_H
#define ARM_MOTION_ACTION_MESSAGE_ARM_INTERFACERESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace arm_motion_action
{
template <class ContainerAllocator>
struct arm_interfaceResult_
{
  typedef arm_interfaceResult_<ContainerAllocator> Type;

  arm_interfaceResult_()
    : return_code(0)
    , err_code(0)
    , err_msg()
    , computed_arrival_time(0.0)
    , q_arm()
    , current_pose_gripper()  {
    }
  arm_interfaceResult_(const ContainerAllocator& _alloc)
    : return_code(0)
    , err_code(0)
    , err_msg(_alloc)
    , computed_arrival_time(0.0)
    , q_arm(_alloc)
    , current_pose_gripper(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _return_code_type;
  _return_code_type return_code;

   typedef int32_t _err_code_type;
  _err_code_type err_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _err_msg_type;
  _err_msg_type err_msg;

   typedef double _computed_arrival_time_type;
  _computed_arrival_time_type computed_arrival_time;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _q_arm_type;
  _q_arm_type q_arm;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _current_pose_gripper_type;
  _current_pose_gripper_type current_pose_gripper;


    enum { SUCCESS = 0u };
     enum { ARM_RECEIVED_AND_INITIATED_RQST = 1u };
     enum { ARM_REQUEST_REJECTED_ALREADY_BUSY = 2u };
     enum { ARM_SERVER_NOT_BUSY = 3u };
     enum { ARM_SERVER_IS_BUSY = 4u };
     enum { ARM_RECEIVED_AND_COMPLETED_RQST = 5u };
     enum { PATH_IS_VALID = 6u };
     enum { PATH_NOT_VALID = 7u };
     enum { COMMAND_CODE_NOT_RECOGNIZED = 8u };
     enum { ARM_STATUS_UNDEFINED = 9u };
     enum { NOT_FINISHED_BEFORE_TIMEOUT = 10u };
 

  typedef boost::shared_ptr< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> const> ConstPtr;

}; // struct arm_interfaceResult_

typedef ::arm_motion_action::arm_interfaceResult_<std::allocator<void> > arm_interfaceResult;

typedef boost::shared_ptr< ::arm_motion_action::arm_interfaceResult > arm_interfaceResultPtr;
typedef boost::shared_ptr< ::arm_motion_action::arm_interfaceResult const> arm_interfaceResultConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace arm_motion_action

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'roscpp': ['/opt/ros/indigo/share/roscpp/cmake/../msg'], 'actionlib': ['/opt/ros/indigo/share/actionlib/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'arm_motion_action': ['/home/toshiki/ros_ws/devel/share/arm_motion_action/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a878cdb79673e47a4420410bfbf4652";
  }

  static const char* value(const ::arm_motion_action::arm_interfaceResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a878cdb79673e47ULL;
  static const uint64_t static_value2 = 0xa4420410bfbf4652ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_motion_action/arm_interfaceResult";
  }

  static const char* value(const ::arm_motion_action::arm_interfaceResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result definition\n\
#  response codes...\n\
uint8 SUCCESS=0\n\
\n\
uint8 ARM_RECEIVED_AND_INITIATED_RQST=1\n\
uint8 ARM_REQUEST_REJECTED_ALREADY_BUSY=2\n\
uint8 ARM_SERVER_NOT_BUSY=3\n\
uint8 ARM_SERVER_IS_BUSY=4\n\
uint8 ARM_RECEIVED_AND_COMPLETED_RQST=5\n\
uint8 PATH_IS_VALID=6\n\
uint8 PATH_NOT_VALID=7\n\
\n\
uint8 COMMAND_CODE_NOT_RECOGNIZED=8\n\
uint8 ARM_STATUS_UNDEFINED=9\n\
uint8 NOT_FINISHED_BEFORE_TIMEOUT=10\n\
\n\
\n\
int32 return_code\n\
int32 err_code\n\
string err_msg\n\
float64 computed_arrival_time\n\
float64[] q_arm\n\
geometry_msgs/PoseStamped current_pose_gripper\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
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
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::arm_motion_action::arm_interfaceResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.return_code);
      stream.next(m.err_code);
      stream.next(m.err_msg);
      stream.next(m.computed_arrival_time);
      stream.next(m.q_arm);
      stream.next(m.current_pose_gripper);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct arm_interfaceResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_motion_action::arm_interfaceResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_motion_action::arm_interfaceResult_<ContainerAllocator>& v)
  {
    s << indent << "return_code: ";
    Printer<int32_t>::stream(s, indent + "  ", v.return_code);
    s << indent << "err_code: ";
    Printer<int32_t>::stream(s, indent + "  ", v.err_code);
    s << indent << "err_msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.err_msg);
    s << indent << "computed_arrival_time: ";
    Printer<double>::stream(s, indent + "  ", v.computed_arrival_time);
    s << indent << "q_arm[]" << std::endl;
    for (size_t i = 0; i < v.q_arm.size(); ++i)
    {
      s << indent << "  q_arm[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.q_arm[i]);
    }
    s << indent << "current_pose_gripper: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.current_pose_gripper);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_MOTION_ACTION_MESSAGE_ARM_INTERFACERESULT_H
