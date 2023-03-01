#!/usr/bin/env python  
import rospy

if __name__ == '__main__':
    rospy.init_node('display_parameters')

    name = rospy.get_param('~name')
    age = rospy.get_param('~age')
    course = rospy.get_param('~class')

    rospy.loginfo("Got parameter name with value %s", name)
    rospy.loginfo("Got parameter age with value %d", age)
    rospy.loginfo("Got parameter class with value %s", course)