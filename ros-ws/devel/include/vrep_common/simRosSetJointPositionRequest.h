// Generated by gencpp from file vrep_common/simRosSetJointPositionRequest.msg
// DO NOT EDIT!


#ifndef VREP_COMMON_MESSAGE_SIMROSSETJOINTPOSITIONREQUEST_H
#define VREP_COMMON_MESSAGE_SIMROSSETJOINTPOSITIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace vrep_common
{
template <class ContainerAllocator>
struct simRosSetJointPositionRequest_
{
  typedef simRosSetJointPositionRequest_<ContainerAllocator> Type;

  simRosSetJointPositionRequest_()
    : handle(0)
    , position(0.0)  {
    }
  simRosSetJointPositionRequest_(const ContainerAllocator& _alloc)
    : handle(0)
    , position(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _handle_type;
  _handle_type handle;

   typedef double _position_type;
  _position_type position;





  typedef boost::shared_ptr< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct simRosSetJointPositionRequest_

typedef ::vrep_common::simRosSetJointPositionRequest_<std::allocator<void> > simRosSetJointPositionRequest;

typedef boost::shared_ptr< ::vrep_common::simRosSetJointPositionRequest > simRosSetJointPositionRequestPtr;
typedef boost::shared_ptr< ::vrep_common::simRosSetJointPositionRequest const> simRosSetJointPositionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vrep_common

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'vrep_common': ['/home/alpsark/ros-ws/src/vrep_stack/vrep_common/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e628527e6b66a50ae279ed5e0b1eaea0";
  }

  static const char* value(const ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe628527e6b66a50aULL;
  static const uint64_t static_value2 = 0xe279ed5e0b1eaea0ULL;
};

template<class ContainerAllocator>
struct DataType< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vrep_common/simRosSetJointPositionRequest";
  }

  static const char* value(const ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
\n\
int32 handle\n\
float64 position\n\
";
  }

  static const char* value(const ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.handle);
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct simRosSetJointPositionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vrep_common::simRosSetJointPositionRequest_<ContainerAllocator>& v)
  {
    s << indent << "handle: ";
    Printer<int32_t>::stream(s, indent + "  ", v.handle);
    s << indent << "position: ";
    Printer<double>::stream(s, indent + "  ", v.position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VREP_COMMON_MESSAGE_SIMROSSETJOINTPOSITIONREQUEST_H
