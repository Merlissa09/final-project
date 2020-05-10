#!/usr/bin/env python
import rospy # import rospy as normal
from melissa_services.srv import WordCount, WordCountResponse # import the new service and its response from services directory
# WordCountResponse is the <srv_type>Response. The type of object that the servicing function can (optionally) return

def count_words(request): # takes in a string request as a parameter
    return len(request.words.split()) # takes the request string and splits them on the empty delimiter. Len gets # of words.

rospy.init_node('service_server')

service = rospy.Service( # register service
    'word_count', # service name
    WordCount, # service type
    count_words #function service provides - defined above
)

rospy.spin() # will keep active until manually shut down