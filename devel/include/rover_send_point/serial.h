// Generated by gencpp from file rover_send_point/serial.msg
// DO NOT EDIT!


#ifndef ROVER_SEND_POINT_MESSAGE_SERIAL_H
#define ROVER_SEND_POINT_MESSAGE_SERIAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rover_send_point
{
template <class ContainerAllocator>
struct serial_
{
  typedef serial_<ContainerAllocator> Type;

  serial_()
    : serial_to_motor()  {
    }
  serial_(const ContainerAllocator& _alloc)
    : serial_to_motor(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _serial_to_motor_type;
  _serial_to_motor_type serial_to_motor;




  typedef boost::shared_ptr< ::rover_send_point::serial_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rover_send_point::serial_<ContainerAllocator> const> ConstPtr;

}; // struct serial_

typedef ::rover_send_point::serial_<std::allocator<void> > serial;

typedef boost::shared_ptr< ::rover_send_point::serial > serialPtr;
typedef boost::shared_ptr< ::rover_send_point::serial const> serialConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rover_send_point::serial_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rover_send_point::serial_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rover_send_point

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'rover_send_point': ['/home/hgaren/catkin_ws1/src/rover_send_point/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rover_send_point::serial_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rover_send_point::serial_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover_send_point::serial_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover_send_point::serial_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover_send_point::serial_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover_send_point::serial_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rover_send_point::serial_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8d2d93a91c9b0fcf44968cf2ad55fb56";
  }

  static const char* value(const ::rover_send_point::serial_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8d2d93a91c9b0fcfULL;
  static const uint64_t static_value2 = 0x44968cf2ad55fb56ULL;
};

template<class ContainerAllocator>
struct DataType< ::rover_send_point::serial_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rover_send_point/serial";
  }

  static const char* value(const ::rover_send_point::serial_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rover_send_point::serial_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
   string serial_to_motor\n\
   \n\
\n\
";
  }

  static const char* value(const ::rover_send_point::serial_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rover_send_point::serial_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.serial_to_motor);
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
struct Printer< ::rover_send_point::serial_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rover_send_point::serial_<ContainerAllocator>& v)
  {
    s << indent << "serial_to_motor: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.serial_to_motor);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROVER_SEND_POINT_MESSAGE_SERIAL_H
