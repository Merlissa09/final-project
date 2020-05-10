#! /usr/bin/env python2
import rospy
import time # for regular Python timing
import actionlib # for actions!
from melissa_actions.msg import \
    TimerAction, TimerGoal, TimerResult, TimerFeedback # imports the custom actions
    
def do_timer(goal):# action function - accepts a goal obj as the arguement
    start_time = time.time() # start the timer
    update_count = 0 # initialize the count
    if goal.time_to_wait.to_sec() > 60.0: # check req duration - is goal greater than 60 secs
        result = TimerResult() # create the result object
        result.time_elapsed = rospy.Duration.from_sec(
            time.time() - start_time)
        result.updates_sent = update_count
        server.set_aborted(result, "Aborted: too long to wait") # set error message
        return# too long of a requested wait
    while(time.time()-start_time) < goal.time_to_wait.to_sec(): # only enter this if request meets expectations
        # waiting to meet goal duration
        if server.is_preempt_requested():# check preemption - did the client ask to cancel early?
            result = TimerResult() # create the result object
            result.time_elapsed = rospy.Duration.from_sec(
                time.time() - start_time)
            result.updates_sent = update_count # update sent so far
            server.set_preempted(result, "Timer preempted") # set error message
            return
        feedback = TimerFeedback() # create the feedback object
        feedback.time_elapsed = rospy.Duration.from_sec(
            time.time() - start_time)
        feedback.time_remaining = \
            goal.time_to_wait - feedback.time_elapsed
        server.publish_feedback(feedback) # set the feedback message
        update_count += 1 # update the count
        time.sleep(1.0) # sleep for one second with python timing - publish feedback every 1 sec
    result = TimerResult() # create the result object
    result.time_elapsed = rospy.Duration.from_sec(
        time.time() - start_time)
    result.updates_sent = update_count
    server.set_succeeded(result, "Timer completed successfully") # create the result object
                    
rospy.init_node('timer_action_server')# initialize node
server = actionlib.SimpleActionServer( #takes 4 arguements
    'timer', # server name
    TimerAction, # action type - custom message we made
    do_timer, # the callback function
    False # this will auto start server if true, always set toe false
    )
server.start()
rospy.spin()