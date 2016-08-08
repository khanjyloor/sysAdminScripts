#!/bin/bash 

# Suspend machine after a certain amount of time.

time=6

if (("$EUID" != 0)); then
	echo "Run as root"
	exit
fi

echo "Suspending in "+$time

sleep $time 

pm-suspend
