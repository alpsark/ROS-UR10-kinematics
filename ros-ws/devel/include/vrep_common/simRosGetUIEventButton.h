// Generated by gencpp from file vrep_common/simRosGetUIEventButton.msg
// DO NOT EDIT!


#ifndef VREP_COMMON_MESSAGE_SIMROSGETUIEVENTBUTTON_H
#define VREP_COMMON_MESSAGE_SIMROSGETUIEVENTBUTTON_H

#include <ros/service_traits.h>


#include <vrep_common/simRosGetUIEventButtonRequest.h>
#include <vrep_common/simRosGetUIEventButtonResponse.h>


namespace vrep_common
{

struct simRosGetUIEventButton
{

typedef simRosGetUIEventButtonRequest Request;
typedef simRosGetUIEventButtonResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct simRosGetUIEventButton
} // namespace vrep_common


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vrep_common::simRosGetUIEventButton > {
  static const char* value()
  {
    return "73f7d10c9f731ce35564b7e9b645aa25";
  }

  static const char* value(const ::vrep_common::simRosGetUIEventButton&) { return value(); }
};

template<>
struct DataType< ::vrep_common::simRosGetUIEventButton > {
  static const char* value()
  {
    return "vrep_common/simRosGetUIEventButton";
  }

  static const char* value(const ::vrep_common::simRosGetUIEventButton&) { return value(); }
};


// service_traits::MD5Sum< ::vrep_common::simRosGetUIEventButtonRequest> should match 
// service_traits::MD5Sum< ::vrep_common::simRosGetUIEventButton > 
template<>
struct MD5Sum< ::vrep_common::simRosGetUIEventButtonRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vrep_common::simRosGetUIEventButton >::value();
  }
  static const char* value(const ::vrep_common::simRosGetUIEventButtonRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vrep_common::simRosGetUIEventButtonRequest> should match 
// service_traits::DataType< ::vrep_common::simRosGetUIEventButton > 
template<>
struct DataType< ::vrep_common::simRosGetUIEventButtonRequest>
{
  static const char* value()
  {
    return DataType< ::vrep_common::simRosGetUIEventButton >::value();
  }
  static const char* value(const ::vrep_common::simRosGetUIEventButtonRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vrep_common::simRosGetUIEventButtonResponse> should match 
// service_traits::MD5Sum< ::vrep_common::simRosGetUIEventButton > 
template<>
struct MD5Sum< ::vrep_common::simRosGetUIEventButtonResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vrep_common::simRosGetUIEventButton >::value();
  }
  static const char* value(const ::vrep_common::simRosGetUIEventButtonResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vrep_common::simRosGetUIEventButtonResponse> should match 
// service_traits::DataType< ::vrep_common::simRosGetUIEventButton > 
template<>
struct DataType< ::vrep_common::simRosGetUIEventButtonResponse>
{
  static const char* value()
  {
    return DataType< ::vrep_common::simRosGetUIEventButton >::value();
  }
  static const char* value(const ::vrep_common::simRosGetUIEventButtonResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VREP_COMMON_MESSAGE_SIMROSGETUIEVENTBUTTON_H
