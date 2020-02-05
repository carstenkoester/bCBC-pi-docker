#!/bin/sh
echo -n $VNC_PASSWD | vncpasswd -f > /root/.vnc/passwd
export USER=pi
