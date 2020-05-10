#!/usr/bin/env python
import rospy # import rospy to use the ros python services
from melissa_services.srv import WordCount # import the custom made service
import sys # this allows for passing in arguments when called via rosrun/command line

rospy.init_node('service_client') # create the node called service_client

rospy.wait_for_service('word_count') # wait for the registration - this is sync so could wait for a long time
word_counter = rospy.ServiceProxy( # set up proxy
    'word_count', # name of the serivce - name of the service we gave to the server
    WordCount # type of the service
)

words = ' '.join(sys.argv[1:]) # parse the arguements from the command line/ros run - going to take them in and join with spaces
word_count = word_counter(words) # use the service

print(words+'--> has '+str(word_count.count)+' words')