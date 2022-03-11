FROM ros:galactic-ros-base

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y \
    ros-${ROS_DISTRO}-demo-nodes-cpp