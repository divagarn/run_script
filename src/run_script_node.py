#!/usr/bin/env python3
# license removed for brevity
import rospy
from subprocess import call
import subprocess

if __name__ == '__main__':
    try:
        rospy.init_node('run_script', anonymous=True)
        #rc = call("/home/haystack/catkin_ws/src/run_script/src/script.sh", shell=True)
        subprocess.Popen('/home/haystack/catkin_ws/src/run_script/src/script.sh', shell=True, executable='/bin/bash')
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
