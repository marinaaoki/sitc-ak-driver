# Azure Kinect ROS Dual-Driver Launch

This ROS package is to be used in conjunction with the Azure Kinect ROS Driver provided by Microsoft.

To launch with two cameras, provide the master camera's serial number using the argument `master_sn`, and `sub_sn` for the subordinate camera. This will launch two ROS nodes, one for each camera and ensure that the sub camera is offset to the master camera so there are no disturbances.

To change the topic namespace, 
