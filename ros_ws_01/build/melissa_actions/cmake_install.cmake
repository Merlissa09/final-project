# Install script for directory: /home/merlissa/code/ros_ws_01/src/melissa_actions

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/merlissa/code/ros_ws_01/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/melissa_actions/action" TYPE FILE FILES "/home/merlissa/code/ros_ws_01/src/melissa_actions/action/Timer.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/melissa_actions/msg" TYPE FILE FILES
    "/home/merlissa/code/ros_ws_01/devel/share/melissa_actions/msg/TimerAction.msg"
    "/home/merlissa/code/ros_ws_01/devel/share/melissa_actions/msg/TimerActionGoal.msg"
    "/home/merlissa/code/ros_ws_01/devel/share/melissa_actions/msg/TimerActionResult.msg"
    "/home/merlissa/code/ros_ws_01/devel/share/melissa_actions/msg/TimerActionFeedback.msg"
    "/home/merlissa/code/ros_ws_01/devel/share/melissa_actions/msg/TimerGoal.msg"
    "/home/merlissa/code/ros_ws_01/devel/share/melissa_actions/msg/TimerResult.msg"
    "/home/merlissa/code/ros_ws_01/devel/share/melissa_actions/msg/TimerFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/melissa_actions/cmake" TYPE FILE FILES "/home/merlissa/code/ros_ws_01/build/melissa_actions/catkin_generated/installspace/melissa_actions-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/merlissa/code/ros_ws_01/devel/include/melissa_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/merlissa/code/ros_ws_01/devel/share/roseus/ros/melissa_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/merlissa/code/ros_ws_01/devel/share/common-lisp/ros/melissa_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/merlissa/code/ros_ws_01/devel/share/gennodejs/ros/melissa_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/home/merlissa/.pyenv/shims/python2" -m compileall "/home/merlissa/code/ros_ws_01/devel/lib/python2.7/dist-packages/melissa_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/merlissa/code/ros_ws_01/devel/lib/python2.7/dist-packages/melissa_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/merlissa/code/ros_ws_01/build/melissa_actions/catkin_generated/installspace/melissa_actions.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/melissa_actions/cmake" TYPE FILE FILES "/home/merlissa/code/ros_ws_01/build/melissa_actions/catkin_generated/installspace/melissa_actions-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/melissa_actions/cmake" TYPE FILE FILES
    "/home/merlissa/code/ros_ws_01/build/melissa_actions/catkin_generated/installspace/melissa_actionsConfig.cmake"
    "/home/merlissa/code/ros_ws_01/build/melissa_actions/catkin_generated/installspace/melissa_actionsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/melissa_actions" TYPE FILE FILES "/home/merlissa/code/ros_ws_01/src/melissa_actions/package.xml")
endif()

