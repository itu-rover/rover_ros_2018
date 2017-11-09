#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from rover_msgs.msg import Autonomous

autonomousVariable = ""

def call_back_autonomous(data):
    
    global autonomousVariable
    autonomousVariable = data.data
    
   

def main():    
    
    rospy.init_node('autonomous')
    rospy.Subscriber('autonomous',String,call_back_autonomous)
    
    rate = rospy.Rate(100)
    printOnce = True
    

    autonomous_pub = rospy.Publisher('autonomous',String,queue_size=10)
    while not rospy.is_shutdown():

        if autonomousVariable is '1' and printOnce is True :
            Autonomous.autonomousBool = True
            print("It is working autonomously")
            autonomous_pub.publish('1')

            printOnce = False
        
        
        
            


    rospy.spin()

if __name__ == '__main__':
    main()