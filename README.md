# Azure Kinect ROS Dual-Driver Launch

This ROS package is to be used in conjunction with the Azure Kinect ROS Driver provided by Microsoft.

To launch with two cameras, provide the master camera's serial number using the argument `master_sn`, and `doctor_sn` for the subordinate camera. This will launch two ROS nodes, one for each camera and ensure that the sub camera is offset to the master camera so there are no disturbances.

To change the topic namespace, pass the `master_id` and `doctor_id` arguments with desired values..

## Checklist for setting up a new device

1. Install the Azure Kinect SDK. k4a-tools does not have to be installed on headless devices.
2. Set up ROS_MASTER_URI and ROS_HOSTNAME variables to point to the ROS master, which is:
3. Set up SSH keys for each new host PC and set the URL to: `git remote set-url origin git@github.com:USERNAME/REPOSITORY.git`
4. Clone this repository and the ROS driver repo provided by Microsoft.
5. Update the k4a-rules using the script provided by Microsoft.
6. For dual-driver launch, update the USB memory limit.
