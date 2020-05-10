// Generated by gencpp from file melissa_topics/Complex.msg
// DO NOT EDIT!


#ifndef MELISSA_TOPICS_MESSAGE_COMPLEX_H
#define MELISSA_TOPICS_MESSAGE_COMPLEX_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace melissa_topics
{
template <class ContainerAllocator>
struct Complex_
{
  typedef Complex_<ContainerAllocator> Type;

  Complex_()
    : real(0.0)
    , imaginary(0.0)  {
    }
  Complex_(const ContainerAllocator& _alloc)
    : real(0.0)
    , imaginary(0.0)  {
  (void)_alloc;
    }



   typedef float _real_type;
  _real_type real;

   typedef float _imaginary_type;
  _imaginary_type imaginary;





  typedef boost::shared_ptr< ::melissa_topics::Complex_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::melissa_topics::Complex_<ContainerAllocator> const> ConstPtr;

}; // struct Complex_

typedef ::melissa_topics::Complex_<std::allocator<void> > Complex;

typedef boost::shared_ptr< ::melissa_topics::Complex > ComplexPtr;
typedef boost::shared_ptr< ::melissa_topics::Complex const> ComplexConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::melissa_topics::Complex_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::melissa_topics::Complex_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::melissa_topics::Complex_<ContainerAllocator1> & lhs, const ::melissa_topics::Complex_<ContainerAllocator2> & rhs)
{
  return lhs.real == rhs.real &&
    lhs.imaginary == rhs.imaginary;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::melissa_topics::Complex_<ContainerAllocator1> & lhs, const ::melissa_topics::Complex_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace melissa_topics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::melissa_topics::Complex_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::melissa_topics::Complex_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::melissa_topics::Complex_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::melissa_topics::Complex_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::melissa_topics::Complex_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::melissa_topics::Complex_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::melissa_topics::Complex_<ContainerAllocator> >
{
  static const char* value()
  {
    return "54da470dccf15d60bd273ab751e1c0a1";
  }

  static const char* value(const ::melissa_topics::Complex_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x54da470dccf15d60ULL;
  static const uint64_t static_value2 = 0xbd273ab751e1c0a1ULL;
};

template<class ContainerAllocator>
struct DataType< ::melissa_topics::Complex_<ContainerAllocator> >
{
  static const char* value()
  {
    return "melissa_topics/Complex";
  }

  static const char* value(const ::melissa_topics::Complex_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::melissa_topics::Complex_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 real\n"
"float32 imaginary\n"
;
  }

  static const char* value(const ::melissa_topics::Complex_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::melissa_topics::Complex_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.real);
      stream.next(m.imaginary);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Complex_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::melissa_topics::Complex_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::melissa_topics::Complex_<ContainerAllocator>& v)
  {
    s << indent << "real: ";
    Printer<float>::stream(s, indent + "  ", v.real);
    s << indent << "imaginary: ";
    Printer<float>::stream(s, indent + "  ", v.imaginary);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MELISSA_TOPICS_MESSAGE_COMPLEX_H