FROM ros:noetic-ros-core

RUN apt-get update && apt-get install -y \
    ros-noetic-ros-tutorials && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*