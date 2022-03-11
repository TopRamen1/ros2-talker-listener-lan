FROM ros:galactic-ros-base

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y \
    ros-${ROS_DISTRO}-demo-nodes-cpp

RUN apt install -y ros-$ROS_DISTRO-rmw-fastrtps-cpp \
    &&  apt remove -y ros-$ROS_DISTRO-rmw-cyclonedds-cpp \
    &&  apt autoremove -y

ENV RMW_IMPLEMENTATION=rmw_fastrtps_cpp