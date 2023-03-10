#!/usr/bin/env python

import sys
import rospy
from jami7095_hw2.srv import EchoString, EchoStringResponse
import time
from matplotlib import pyplot as plt

latency_arr = []

def echo_string_client(str):
	rospy.wait_for_service('echo_string')
	try:
		echo_string = rospy.ServiceProxy('echo_string', EchoString)
		response = echo_string(echo_str)
		return response.echo
	except rospy.ServiceException as e:
		print("Service Call Failed: {}".format(e))

def usage():
	return "{}".format(sys.argv[0])

if __name__ == "__main__":
	# if len(sys.argv) == 2:
	# 	echo_str = sys.argv[1]
	# else:
	# 	print(usage())
	# 	sys.exit(1)
	# print("Requesting Echo of String [{}]".format(echo_str))
	echo_str = "ping"
	for i in range(400):
		t1 = time.time()
		echoed_str= echo_string_client(echo_str)
		latency = (time.time() - t1) * 1000
		latency_arr.append(latency)
		print("Echoed String is...{} with Latency: {}".format(echoed_str, latency))

	plt.hist(latency_arr, bins=50)
	plt.xlabel("Latency [ms]", fontsize=16)
	plt.ylabel("Frequency", fontsize=16)
	plt.title("Service Latency Times for Client/Service Nodes Over 400 Trials", fontsize=20)
	plt.show()
	rospy.signal_shutdown("400 Services Requested")