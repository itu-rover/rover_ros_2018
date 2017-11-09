#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String
from socket import *

ip = '161.9.15.120'
port = 1223
buffer_size = 1024



def connect_to_server():
    rospy.init_node('tcp_client')
    s = socket(AF_INET, SOCK_STREAM)    
    s.connect((ip,port))  

    while not rospy.is_shutdown():
        data = str(s.recv(buffer_size))
        print("received data : ",str(data))
        #s.close()



if __name__ == "__main__":
    try:
        connect_to_server()
    except rospy.ROSInterruptException as IndexError:
        pass