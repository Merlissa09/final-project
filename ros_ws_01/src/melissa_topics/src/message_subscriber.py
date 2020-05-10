#!/usr/bin/env python
import rospy # import rospy
from melissa_topics.msg import Complex

def callback(msg): #create a callback which will perform work when data is returned from subscriber
    print 'Real:', msg.real # print value of real
    print 'Imaginary:', msg.imaginary # print value of imaginary
    print # print blank line

rospy.init_node('message_subscriber')

sub = rospy.Subscriber( #creates the subscription
    'complex', # name of the subscription
    Complex, # type of the message. This one is the custom one created
    callback # function to call once data is returned
)

rospy.spin() # keep this running until shut down manually