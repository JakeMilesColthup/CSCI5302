#!/usr/bin/env python3

# Import Libraries
import rospy
from std_msgs.msg import Header

# Function Definition
def publisher():
	pub = rospy.Publisher('hw_2_topic', Header, queue_size=10)
	rospy.init_node('publisher', anonymous=True)
	rate = rospy.Rate(10)
	while not rospy.is_shutdown():
		header = Header()
		header.stamp = rospy.Time.now()
		pub.publish(header)
		rate.sleep()

# Main Function
if __name__ == "__main__":
	try:
		publisher()
	except rospy.ROSInterruptException:
		pass