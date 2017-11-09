#!/usr/bin/env python
#from tcp_com.srv import *
import rospy
from std_msgs.msg import String
from socket import *







ip = '161.9.15.120'
port = 1223
buffer_size = 20

#rospy.loginfo( 'Connection adress : ', addr )

def open_server():
    rospy.init_node('tcp_server')


    

    s = socket(AF_INET, SOCK_STREAM)
    
    s.bind((ip,port))
    
    s.listen(1)
    
    conn, addr = s.accept()
    
    

    while not rospy.is_shutdown():
        #data = raw_input("Enter data to be send : ")
        
        conn.send("Hello World")
        
   # if not data : break
        #s.close()
   # conn.send(data)
#conn.close()

if __name__ == "__main__":
    try:
        open_server()
    except rospy.ROSInterruptException as IndexError:
        pass
    

    
