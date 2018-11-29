#! /bin/sh
# A short script to toggle compositing on or off for XFCE Window Manager (XFWM)
#
# @author   Wagner fonseca 
# @created  2018-11-29

## DPI
xfconf-query -c xsettings -p /Xft/DPI -s 114


if $(xfconf-query --channel=xfwm4 --property=/general/cycle_preview) == "true"
then
	xfconf-query --channel=xfwm4 --property=/general/cycle_preview --set=false
fi
