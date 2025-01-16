# Azure Kinect ROS Dual-Driver Launch

This ROS package is to be used in conjunction with the Azure Kinect ROS Driver provided by Microsoft. 

To launch with two cameras, provide the master camera's serial number using the argument `master_sn`, and `doctor_sn` for the subordinate camera. This will launch two ROS nodes, one for each camera and ensure that the sub camera is offset to the master camera so there are no disturbances.

To change the topic namespace, pass the `master_id` and `doctor_id` arguments with desired values..

## Checklist for setting up a new device

1. Install ROS: http://wiki.ros.org/noetic/Installation/Ubuntu
2. Set up ROS_MASTER_URI and ROS_HOSTNAME variables to point to the ROS master, which is: 163.221.132.135
3. Set up SSH keys for each new host PC and set the URL to: `git remote set-url origin git@github.com:USERNAME/REPOSITORY.git` (see https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
4. Clone this repository and the ROS driver repo provided by Microsoft (https://github.com/microsoft/Azure_Kinect_ROS_Driver).
5. Install the Azure Kinect SDK. k4a-tools does not have to be installed on headless devices. Use the script provided in this repo for Ubuntu 20.04. The script also updates the k4a-rules using the script provided by Microsoft.
6. For dual-driver launch, update the USB memory limit as documented here (https://learn.microsoft.com/en-us/previous-versions/azure/kinect-dk/multi-camera-sync#linux-computers-usb-memory-on-ubuntu).
7. For visualisation using k4aviewer, set up an xrdp server on each edge device following the instructions [here](https://www.digitalocean.com/community/tutorials/how-to-enable-remote-desktop-protocol-using-xrdp-on-ubuntu-22-04).

## Debugging
- If you get an error similar to `No such command: xacro` while building the workspace, then you may need to install the ROS xacro package: `sudo apt-get install ros-noetic-xacro`.
- The same goes for any other packages you may receive an error for while building the Kinect ROS driver. This includes, but is not limited to:
 - image_transport
 - image_geometry
 - tf2
 - tf2_ros
 - tf2_geometry_msgs
 - cv_bridge
 - camera_info_manager
 - angles
 - robot_state_publisher
 - joint_state_publisher
