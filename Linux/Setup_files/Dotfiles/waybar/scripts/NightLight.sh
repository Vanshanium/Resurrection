#!/bin/bash

if pgrep -x "gammastep" > /dev/null
then
    pkill gammastep
else
    gammastep -O 3000 &
fi