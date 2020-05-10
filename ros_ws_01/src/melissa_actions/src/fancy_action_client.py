#! /usr/bin/env python
import rospy
import time # for regular Python timing
import actionlib# for actions!
from melissa_actions.msg import \
    TimerAction, TimerGoal, TimerResult, TimerFeedback
    
def the_feedback_cb(feedback):# feedback callback function
    print('[Feedback] Time elapsed:%f' %
        (feedback.time_elapsed.to_sec())) # print the formatted time elapsed in seconds
    print('[Feedback] Time remaining:%f' %
        (feedback.time_remaining.to_sec())) # print the formatted time remaining in seconds
        
rospy.init_node('timer_action_client') # initialize node
client = actionlib.SimpleActionClient( # register client and wait for the server connection
    'timer', # action server name used for the server
    TimerAction # action Action message
)
client.wait_for_server()# wait for action server to establish the connection
goal = TimerGoal()# create goal object
goal.time_to_wait = rospy.Duration.from_sec(5.0)# set field which is the goal for the action - this is 5 secs
# Uncomment this line to test server-side abort:
# goal.time_to_wait = rospy.Duration.from_sec(500.0)

client.send_goal(goal, feedback_cb=the_feedback_cb )# send goal with the callback func
# Uncomment these lines to test goal preemption:
# time.sleep(3.0)
# client.cancel_goal()

client.wait_for_result()# wait for action server to finish - async - won't finish until several feedbacks

# print results:
print('[Result] State:%d' % (client.get_state()))
print('[Result] Status:%s' % (client.get_goal_status_text()))
if client.get_result(): # checking if the result fetching had results
    print('[Result] Time elapsed:%f' %
        (client.get_result().time_elapsed.to_sec()))
    print('[Result] Updates sent:%d' %
        (client.get_result().updates_sent))