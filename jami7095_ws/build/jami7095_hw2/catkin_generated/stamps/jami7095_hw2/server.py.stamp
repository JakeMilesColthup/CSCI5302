#!/usr/bin/env python

import rospy
from jami7095_hw2.srv import EchoString, EchoStringResponse

def handle_echo_string(req):
	print("Returning Requested String [{}]".format(req.data))
	return req.data

def echo_string_server():
	rospy.init_node('echo_string_server')
	s = rospy.Service('echo_string', EchoString, handle_echo_string)
	print("Ready to echo string")
	rospy.spin()


if __name__ == "__main__":
	echo_string_server()