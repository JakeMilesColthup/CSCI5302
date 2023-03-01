#!/usr/bin/env python3

# Import Libraries
import rospy
from std_msgs.msg import Header
from matplotlib import pyplot as plt
import numpy as np
import math

# Latency Array
latency_arr = []

# Function Definitions
def callback(data):
	latency = float(rospy.Time.now().nsecs - data.stamp.nsecs)/1e6
	# print(type(rospy.Time.now().nsecs - data.stamp.nsecs))
	rospy.loginfo("[{}] Latency: {} ms".format(len(latency_arr)+1, latency))
	latency_arr.append(latency)

	if len(latency_arr) == 400:
		plt.hist(latency_arr, bins=50)
		plt.xlabel("Latency [ms]", fontsize=16)
		plt.ylabel("Frequency", fontsize=16)
		plt.title("Message Latency Times for Pub/Sub Nodes Over 400 Trials", fontsize=20)
		plt.show()
		rospy.signal_shutdown("400 Messages Received")



def subscriber():
	rospy.init_node('subscriber', anonymous=True)
	rospy.Subscriber('hw_2_topic', Header, callback)
	rospy.spin()

# Main Function
if __name__ == "__main__":
	subscriber()