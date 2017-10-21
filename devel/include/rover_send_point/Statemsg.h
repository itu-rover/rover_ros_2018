// Generated by gencpp from file rover_send_point/Statemsg.msg
// DO NOT EDIT!


#ifndef ROVER_SEND_POINT_MESSAGE_STATEMSG_H
#define ROVER_SEND_POINT_MESSAGE_STATEMSG_H


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
struct Statemsg_
{
  typedef Statemsg_<ContainerAllocator> Type;

  Statemsg_()
    : from_rover()
    , from_state()  {
    }
  Statemsg_(const ContainerAllocator& _alloc)
    : from_rover(_alloc)
    , from_state(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _from_rover_type;
  _from_rover_type from_rover;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _from_state_type;
  _from_state_type from_state;




  typedef boost::shared_ptr< ::rover_send_point::Statemsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rover_send_point::Statemsg_<ContainerAllocator> const> ConstPtr;

}; // struct Statemsg_

typedef ::rover_send_point::Statemsg_<std::allocator<void> > Statemsg;

typedef boost::shared_ptr< ::rover_send_point::Statemsg > StatemsgPtr;
typedef boost::shared_ptr< ::rover_send_point::Statemsg const> StatemsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rover_send_point::Statemsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rover_send_point::Statemsg_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::rover_send_point::Statemsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rover_send_point::Statemsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover_send_point::Statemsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover_send_point::Statemsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover_send_point::Statemsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover_send_point::Statemsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rover_send_point::Statemsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "018743e3f49a441664f3e7456bcc1cfc";
  }

  static const char* value(const ::rover_send_point::Statemsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x018743e3f49a4416ULL;
  static const uint64_t static_value2 = 0x64f3e7456bcc1cfcULL;
};

template<class ContainerAllocator>
struct DataType< ::rover_send_point::Statemsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rover_send_point/Statemsg";
  }

  static const char* value(const ::rover_send_point::Statemsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rover_send_point::Statemsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return " \n\
   string from_rover\n\
   string from_state\n\
";
  }

  static const char* value(const ::rover_send_point::Statemsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rover_send_point::Statemsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.from_rover);
      stream.next(m.from_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Statemsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rover_send_point::Statemsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rover_send_point::Statemsg_<ContainerAllocator>& v)
  {
    s << indent << "from_rover: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.from_rover);
    s << indent << "from_state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.from_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROVER_SEND_POINT_MESSAGE_STATEMSG_H