#!/usr/bin/env python

#This is the main status handler for ITU Rover Team state_machine.py

import rospy
from rover_msgs.msg import Autonomous
from std_msgs.msg import String
from rover_msgs.msg import Choose_Duty


class status_handler:
    def __init__(self):
        rospy.init_node('state_machine')



    def start(self):
        rospy.init_node('state_machine')
        rospy.Subscriber('autonomous', String, self.call_back_autonomous)
        rospy.Subscriber('choose_duty', String, self.call_back_choose)


    def call_back_autonomous(self,data):
        global autonomousVariable
        autonomousVariable = data.data
        self.autonomousVariable = data.data
        self.autonomousVariable = Autonomous.autonomousVariable


    def call_back_choose(self,data):
        global chooseVariable
        chooseVariable = data.data