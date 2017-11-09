#!/usr/bin/env python
import socket
import rospy
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
def get_ip():
    try:
        s.connect(('10.255.255.255', 1))
        IP = s.getsockname()[0]
    except:
        IP = '127.0.0.1'
    finally:
        s.close()
    return IP
def write_ip():
    rospy.init_node('find_ip')
    myIP = get_ip()
    rospy.loginfo(myIP)
if __name__ == "__main__":
    try:
        write_ip()
    except rospy.ROSInterruptException as IndexError:
        pass