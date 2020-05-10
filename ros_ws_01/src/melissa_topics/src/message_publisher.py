#!/usr/bin/env python
import rospy # imports rospy
from melissa_topics.msg import Complex # importing our own Complex msg types
from random import random # will be printing random numbers in this example - must import the random generator service

rospy.init_node('message_publisher') # initialize the node

# this is how the topic is registered
pub = rospy.Publisher(
    'complex', # name
    Complex, #type = this is from the Complex.msg that we made earlier
    queue_size=3 # queue size
)

rate = rospy.Rate(2) # set rate 

while not rospy.is_shutdown(): # white node is active/not shutdown
    msg = Complex() # create a Complex object and assign to msg variable with empty constructor
    msg.real = random() # assigned a random value to the msg.real property
    msg.imaginary = random() # assigned a random value to the msg.imaginary property

    pub.publish(msg) # publish this topic
    rate.sleep() # sleep to keep the rate going at 2 hertz