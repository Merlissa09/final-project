// Generated by gencpp from file melissa_services/WordCountResponse.msg
// DO NOT EDIT!


#ifndef MELISSA_SERVICES_MESSAGE_WORDCOUNTRESPONSE_H
#define MELISSA_SERVICES_MESSAGE_WORDCOUNTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace melissa_services
{
template <class ContainerAllocator>
struct WordCountResponse_
{
  typedef WordCountResponse_<ContainerAllocator> Type;

  WordCountResponse_()
    : count(0)  {
    }
  WordCountResponse_(const ContainerAllocator& _alloc)
    : count(0)  {
  (void)_alloc;
    }



   typedef uint32_t _count_type;
  _count_type count;





  typedef boost::shared_ptr< ::melissa_services::WordCountResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::melissa_services::WordCountResponse_<ContainerAllocator> const> ConstPtr;

}; // struct WordCountResponse_

typedef ::melissa_services::WordCountResponse_<std::allocator<void> > WordCountResponse;

typedef boost::shared_ptr< ::melissa_services::WordCountResponse > WordCountResponsePtr;
typedef boost::shared_ptr< ::melissa_services::WordCountResponse const> WordCountResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::melissa_services::WordCountResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::melissa_services::WordCountResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::melissa_services::WordCountResponse_<ContainerAllocator1> & lhs, const ::melissa_services::WordCountResponse_<ContainerAllocator2> & rhs)
{
  return lhs.count == rhs.count;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::melissa_services::WordCountResponse_<ContainerAllocator1> & lhs, const ::melissa_services::WordCountResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace melissa_services

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::melissa_services::WordCountResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::melissa_services::WordCountResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::melissa_services::WordCountResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::melissa_services::WordCountResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::melissa_services::WordCountResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::melissa_services::WordCountResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::melissa_services::WordCountResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ac8b22eb02c1f433e0a55ee9aac59a18";
  }

  static const char* value(const ::melissa_services::WordCountResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xac8b22eb02c1f433ULL;
  static const uint64_t static_value2 = 0xe0a55ee9aac59a18ULL;
};

template<class ContainerAllocator>
struct DataType< ::melissa_services::WordCountResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "melissa_services/WordCountResponse";
  }

  static const char* value(const ::melissa_services::WordCountResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::melissa_services::WordCountResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 count\n"
;
  }

  static const char* value(const ::melissa_services::WordCountResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::melissa_services::WordCountResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WordCountResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::melissa_services::WordCountResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::melissa_services::WordCountResponse_<ContainerAllocator>& v)
  {
    s << indent << "count: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MELISSA_SERVICES_MESSAGE_WORDCOUNTRESPONSE_H
