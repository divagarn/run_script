#! /bin/bash
source /home/haystack/.bashrc
xhost +
pkill -9 AMR_UI
sudo docker pull nimbushaystack/haystack_noetic_ui:latest
echo "starting docker"
sudo docker run -v /home:/home -w /haystack-ui --network=host -e DISPLAY=:0 -v /etc/asound.conf:/etc/asound.conf -v /etc/localtime:/etc/localtime -v /run/dbus/system_bus_socket:/run/dbus/system_bus_socket -v /tmp/.X11-unix:/tmp/.X11-unix --privileged -v /dev:/dev -u "1000:1000" -v /run/user/1000/pulse:/run/user/1000/pulse nimbushaystack/haystack_noetic_ui:latest ./AMR_UI
#echo "hello"
