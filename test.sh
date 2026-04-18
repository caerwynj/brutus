#!/bin/sh

export ROOT=$HOME/inferno64
export SYSHOST=Linux
export OBJTYPE=amd64

case $# in
0) args="./brutus test.md";;
*) args=$*;;
esac

timeout -s9 -k3 3 $ROOT/$SYSHOST/$OBJTYPE/bin/emu -I /dis/sh.dis -lc "$args; tiny/broke" & scrot -uoF win.png -d 1
