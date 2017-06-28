#!/bin/sh


ssh -C -f -L 5901:localhost:5901 bwbeckwi@192.168.3.77 \
	x11vnc -safter -localhost -nopw -once -display :1 \
	&& sleep 5 \
	&& vncviewer localhost:1


