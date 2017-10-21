// Generated by gencpp from file rover_control/serial.msg
// DO NOT EDIT!


#ifndef ROVER_CONTROL_MESSAGE_SERIAL_H
#define ROVER_CONTROL_MESSAGE_SERIAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rover_control
{
template <class ContainerAllocator>
struct serial_
{
  typedef serial_<ContainerAllocator> Type;

  serial_()
    : cmd_vel()
    , gps()  {
    }
  serial_(const ContainerAllocator& _alloc)
    : cmd_vel(_alloc)
    , gps(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _cmd_vel_type;
  _cmd_vel_type cmd_vel;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _gps_type;
  _gps_type gps;




  typedef boost::shared_ptr< ::rover_control::serial_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rover_control::serial_<ContainerAllocator> const> ConstPtr;

}; // struct serial_

typedef ::rover_control::serial_<std::allocator<void> > serial;

typedef boost::shared_ptr< ::rover_control::serial > serialPtr;
typedef boost::shared_ptr< ::rover_control::serial const> serialConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rover_control::serial_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rover_control::serial_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rover_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'rover_control': ['/home/hgaren/catkin_ws1/src/rover_control/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rover_control::serial_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rover_control::serial_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover_control::serial_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover_control::serial_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover_control::serial_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover_control::serial_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rover_control::serial_<ContainerAllocator> >
{
  static const char* value()
  {
    return "388e2110b60d12d6782240611a4f13c8";
  }

  static const char* value(const ::rover_control::serial_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x388e2110b60d12d6ULL;
  static const uint64_t static_value2 = 0x782240611a4f13c8ULL;
};

template<class ContainerAllocator>
struct DataType< ::rover_control::serial_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rover_control/serial";
  }

  static const char* value(const ::rover_control::serial_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rover_control::serial_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
   string cmd_vel\n\
   string gps\n\
\n\
";
  }

  static const char* value(const ::rover_control::serial_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rover_control::serial_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd_vel);
      stream.next(m.gps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct serial_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rover_control::serial_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rover_control::serial_<ContainerAllocator>& v)
  {
    s << indent << "cmd_vel: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.cmd_vel);
    s << indent << "gps: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.gps);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROVER_CONTROL_MESSAGE_SERIAL_H