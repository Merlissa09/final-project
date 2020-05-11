# Final Project for MME557, EE/ME477

This repository includes some sample code that was written during the course of the MME557/EE/E477 class. It consists of 3 main
repositories. These are the services, actions, and topics for a ROS service.
   

## Requirements
- Operating system: Ubuntu Bionic
- Language: Python 2.17
- ROS Version: Melodic 
- Python 2.7.17


## Installation and Configuration
 - Download ROS Melodic by following these instructions http://wiki.ros.org/melodic/Installation/Ubuntu
 - Download Python via pyenv install 2.7.17
 - Download Git via 'sudo apt install git'
 - Clone the repo into your own repository by copying the address associated with the clone option above and typing 'git clone <cloned address>'

## Getting started

- melissa_topics

The topics section is designed to demo some of the most basic communication between two different nodes via topics - also known as messages. There are two sets of client/server demos avaiable in this directory. The first of which is the topic_publisher and topic_subscriber client/server. The topic_publisher will create a topic which will start at 0 and then send an updated count after its wait cycle to the subscriber. The client in this example listens and then prints out the count. This example shows the use of standard message types import from std_msg. The second client/server pair called message_publisher and message_subscriber used a custom message type which is declared in melissa_topics/msg called Complex.msg. This defines two types of properties  which are both float32, one called real and the other imaginary. The message_publisher in this example will create a Complex message object. In this a random number is assigned to both teh real and imaginary. The client will listen to theis and then print the values.

Both of these client/server pairs can be run with the rosrun command. First a roscore service must be started up. Then in another command line tab the ros_ws_01 directory must be sourced with the devel/setup.bash command. Once this has happened navigate to the src directory and then provide the command 'rosrun <package directory> <package name>'. For example for the server you might type rosrun melissa_topics message_publisher. Once the server is running then follow the same steps in a new command line window for the client.

The topic_publisher and topic_subscriber can also be run via the launch package. This can be done by from ros_ws_01 src directory. Type the command roslaunch melissa_topics melisa_topics_launch.launch

- melissa_services

The services section was created to demo how a server node can communicate with a client node synchronously. The melissa_services contains both a server/client pair named service_client and service_server. There is a also a special directory in melissa_services called srv which holds a WordCount.srv file. This file defines an input of type string called words and an output of type int32 called count. The service package in this example creates a Service of the custom type WordCount and calls the function count_words. This function takes in the input, which is a string of words, and returns the number of words in the string. It does this by splittig the input string on spaces and then calling the python len function. This will then be returned to the client will display the input word and count to the console.

These server/client packages can be run by first starting a roscore service. After that a second command line tab will need to be opened and the ros_ws_01 directory must be sourced with the devel/setup.bash command. Once this has happened navigate to the src directory and then provide the command 'rosrun <package directory> <package name>. For example, 'rosrun melissa_services service_server'. This service does take input from the command line so appending the string to parse will result in more interesting output. There is also a launch file defined for this directory and from ros_ws_01 the following command can be typed to excecute both the client and the server 'roslaunch melissa_topics melisa_topics_launch.launch'. This doesn't read from the command line though so it will be empty.

- melissa_actions

This section demos the action functionality that ROS offers. What makes an action special is that it is asynchronous and can provide updates to it's client about the status of the request. This is helpful for long running tasks where period updating is important. For example, in a website it can sometimes take a while for a shopping cart to submit. Keeping users updated with a percentage bar showing submission status can lower frustration. A long running process can often look like a hanging service to an unknowing user.

The server in this specific situation is going to accept a period of time in seconds from the client and then provide an update every 5 seconds back. This update will inform the client of how much time has elapsed and how much is remaining. Once the time period has elapsed it will then provide its final message with how many updates were sent, the state, and a status message.

Staring this client and server demo is simple. From the src directory of melissa_actions type the command 'roslaunch fancy_action.launch'. This will automatically start up a roscore service and launch both the server and client. Each of the services can also be launched manually. In one terminal window tab roscore will need to be started. In another tab the server will need to be run. Before this can happen the directory must be sourced. From ros_ws_01 type the command 'source devel/setup.bash'. This needs to be done every time a new terminal window is opened. Cd into the src directory. Start the server node first by typing 'rosrun melissa_actions fancy_action_server.py'. Once the server is started, open a new terminal tab and source ros_ws_01, cd into the src directory, then run the client via 'rosrun melissa_actions fancy_action_client.py'

## Usage
 - List of basic commands
    - rosrun <package name> - will return a given package
    - roscore - will start up a roscore server. This is required if rosrun will be used for running the packages
    - roslaunch <launch package name> - used to launch packages which have a 
