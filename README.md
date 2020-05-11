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
- melissa_actions

This section demos the action functionality that ROS offers. What makes an action special is that it is asynchronous and can provide updates to it's client about the status of the request. This is helpful for long running tasks where period updating is important. For example, in a website it can sometimes take a while for a shopping cart to submit. Keeping users updated with a percentage bar showing submission status can lower frustration. A long running process can often look like a hanging service to an unknowing user.

The server in this specific situation is going to accept a period of time in seconds from the client and then provide an update every 5 seconds back. This update will inform the client of how much time has elapsed and how much is remaining. Once the time period has elapsed it will then provide its final message with how many updates were sent, the state, and a status message.

Staring this client and server demo is simple. From the src directory of melissa_actions type the command 'roslaunch fancy_action.launch'. This will automatically start up a roscore service and launch both the server and client. Each of the services can also be launched manually. In one terminal window tab roscore will need to be started. In another tab the server will need to be run. Before this can happen the directory must be sourced. From ros_ws_01 type the command 'source devel/setup.bash'. This needs to be done every time a new terminal window is opened. Start the server node first by typing 'rosrun src/melissa_actions fancy_action_server.py'. Once the server is started, open a new terminal tab and source ros_ws_01, then run the client via 'rosrun src/melissa_actions fancy_action_client.py'

## Usage
 - List of basic commands
    - rosrun <package name> - will return a given package
    - roscore - will start up a roscore server. This is required if rosrun will be used for running the packages
    - roslaunch <launch package name> - used to launch packages which have a 
