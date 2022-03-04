# ros2-talker-listener-lan
This fork contains workaround necessary to run communication with a static IP selected on ethernet port


## Issue description

Occurred on RPI with following netplan
ROS2 communication seems to get sent on interface with static ip (visible on netplan no. 2)
If we delete the static ip problem disappears


Working netplan:
```
network:
    version: 2
    wifis:
        wlan0:
            dhcp4: true
            access-points:
                "Galaktyka":
                    password: "Husarion4Robotics"

```

Not working on netplan
```
network:
    ethernets:
        eth0:
            dhcp4: no
            addresses: [192.168.1.176/24]
    version: 2
    wifis:
        wlan0:
            dhcp4: true
            access-points:
                "Galaktyka":
                    password: "Husarion4Robotics"

```


## Quick Start

Connect two computers to the same LAN

### 1st machine

```
docker compose -f compose.talker.yaml up
```

### 2nd machine

```
docker compose -f compose.listener.yaml up
```