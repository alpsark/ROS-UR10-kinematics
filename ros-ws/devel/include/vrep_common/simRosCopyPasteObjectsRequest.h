// Generated by gencpp from file vrep_common/simRosCopyPasteObjectsRequest.msg
// DO NOT EDIT!


#ifndef VREP_COMMON_MESSAGE_SIMROSCOPYPASTEOBJECTSREQUEST_H
#define VREP_COMMON_MESSAGE_SIMROSCOPYPASTEOBJECTSREQUEST_H


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
struct simRosCopyPasteObjectsRequest_
{
  typedef simRosCopyPasteObjectsRequest_<ContainerAllocator> Type;

  simRosCopyPasteObjectsRequest_()
    : objectHandles()  {
    }
  simRosCopyPasteObjectsRequest_(const ContainerAllocator& _alloc)
    : objectHandles(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _objectHandles_type;
  _objectHandles_type objectHandles;





  typedef boost::shared_ptr< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct simRosCopyPasteObjectsRequest_

typedef ::vrep_common::simRosCopyPasteObjectsRequest_<std::allocator<void> > simRosCopyPasteObjectsRequest;

typedef boost::shared_ptr< ::vrep_common::simRosCopyPasteObjectsRequest > simRosCopyPasteObjectsRequestPtr;
typedef boost::shared_ptr< ::vrep_common::simRosCopyPasteObjectsRequest const> simRosCopyPasteObjectsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vrep_common

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'vrep_common': ['/home/alpsark/ros-ws/src/vrep_stack/vrep_common/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "185cb01118006e816646e4234283fa15";
  }

  static const char* value(const ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x185cb01118006e81ULL;
  static const uint64_t static_value2 = 0x6646e4234283fa15ULL;
};

template<class ContainerAllocator>
struct DataType< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vrep_common/simRosCopyPasteObjectsRequest";
  }

  static const char* value(const ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
\n\
int32[] objectHandles\n\
";
  }

  static const char* value(const ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.objectHandles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct simRosCopyPasteObjectsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vrep_common::simRosCopyPasteObjectsRequest_<ContainerAllocator>& v)
  {
    s << indent << "objectHandles[]" << std::endl;
    for (size_t i = 0; i < v.objectHandles.size(); ++i)
    {
      s << indent << "  objectHandles[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.objectHandles[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // VREP_COMMON_MESSAGE_SIMROSCOPYPASTEOBJECTSREQUEST_H
