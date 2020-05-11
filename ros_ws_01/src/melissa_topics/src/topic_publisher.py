#!/usr/bin/env python
import rospy # import ros for python
from std_msgs.msg import Int32 # import the standard messaging for ros

rospy.init_node( # create the node
    'topic_publisher' # name the node
)
pub = rospy.Publisher( # publish a rospy node
    'counter', # name of the published node
    Int32, # message type
    queue_size=5 # queue size
)

rate = rospy.Rate(2) # rate for messages

count = 0 # count
while not rospy.is_shutdown(): # while the server isnt shutdown
    pub.publish(count) # publish the count 
    count += 1 # increment the count
    rate.sleep() # sleep the service to maintain its rate