// Generated by gencpp from file rover_send_point/ferhat_garen.msg
// DO NOT EDIT!


#ifndef ROVER_SEND_POINT_MESSAGE_FERHAT_GAREN_H
#define ROVER_SEND_POINT_MESSAGE_FERHAT_GAREN_H


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
struct ferhat_garen_
{
  typedef ferhat_garen_<ContainerAllocator> Type;

  ferhat_garen_()
    : garen()
    , ferhat()  {
    }
  ferhat_garen_(const ContainerAllocator& _alloc)
    : garen(_alloc)
    , ferhat(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _garen_type;
  _garen_type garen;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _ferhat_type;
  _ferhat_type ferhat;




  typedef boost::shared_ptr< ::rover_send_point::ferhat_garen_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rover_send_point::ferhat_garen_<ContainerAllocator> const> ConstPtr;

}; // struct ferhat_garen_

typedef ::rover_send_point::ferhat_garen_<std::allocator<void> > ferhat_garen;

typedef boost::shared_ptr< ::rover_send_point::ferhat_garen > ferhat_garenPtr;
typedef boost::shared_ptr< ::rover_send_point::ferhat_garen const> ferhat_garenConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rover_send_point::ferhat_garen_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rover_send_point::ferhat_garen_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::rover_send_point::ferhat_garen_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rover_send_point::ferhat_garen_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover_send_point::ferhat_garen_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rover_send_point::ferhat_garen_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover_send_point::ferhat_garen_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rover_send_point::ferhat_garen_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rover_send_point::ferhat_garen_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9efc387478be838a4cfd6bb3e5d7227f";
  }

  static const char* value(const ::rover_send_point::ferhat_garen_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9efc387478be838aULL;
  static const uint64_t static_value2 = 0x4cfd6bb3e5d7227fULL;
};

template<class ContainerAllocator>
struct DataType< ::rover_send_point::ferhat_garen_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rover_send_point/ferhat_garen";
  }

  static const char* value(const ::rover_send_point::ferhat_garen_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rover_send_point::ferhat_garen_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
   string garen\n\
   string ferhat\n\
\n\
";
  }

  static const char* value(const ::rover_send_point::ferhat_garen_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rover_send_point::ferhat_garen_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.garen);
      stream.next(m.ferhat);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ferhat_garen_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rover_send_point::ferhat_garen_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rover_send_point::ferhat_garen_<ContainerAllocator>& v)
  {
    s << indent << "garen: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.garen);
    s << indent << "ferhat: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.ferhat);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROVER_SEND_POINT_MESSAGE_FERHAT_GAREN_H
