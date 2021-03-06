#!/usr/bin/env bash

# setup GNOME desktop
sudo apt-get install -y ubuntu-desktop virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11

# setup ROS stuff
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get install -y ros-melodic-ros-base python-catkin-tools python-catkin-lint
sudo apt-get install -y gitg vim meld terminator
sudo rosdep init
sudo reboot
