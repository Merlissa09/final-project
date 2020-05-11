#!/usr/bin/env python
import rospy # import the python service
from std_msgs.msg import Int32 # import the standard messages

def callback(msg): # the callback function which accepts a message
    print(msg.data) # print the message data

rospy.init_node('topic_subscriber') # create the node

sub = rospy.Subscriber('counter', Int32, callback) # subscribe to the counter topic of type int

rospy.spin() # wait to hear from the server