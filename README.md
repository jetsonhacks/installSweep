# installSweep
Install the Scanse Sweep sdk and Sweep ROS package on a NVIDIA Jetson Dev Kit

The script installSweepSDK.sh installs the Sweep SDK on the Jetson. The script also builds three examples, example-c, example-c++ and example-viewer. There is another example in the examples folder for a network pub-sub, but is not built in this script.

The script installSweepROS.sh install the sweep-ros node in a Catkin Workspace. Usage:

$ ./installSweepROS.sh [catkin workspace name]

The Catkin Workspace must exist. It is expected that the Sweep SDK is already installed before installing the ROS package.

The file 99-usb-serial.rules can be utilized to alias the Sweep as /dev/sweep. This is useful when multiple USB devices are being used with the Jetson which can cause the USB device number to be variably assigned. This is also helpful when more than one device is using an FTDI converter. The Sweep uses an FTDI converter, you can use the serial number of the connected Sweep device to assign the name to the Sweep.  
