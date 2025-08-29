#!/bin/bash

INTERFACE="wlan0" # or eth0, replace this as needed

RX_FILE="/sys/class/net/$INTERFACE/statistics/rx_bytes"
TX_FILE="/sys/class/net/$INTERFACE/statistics/tx_bytes"

if [ ! -f "$RX_FILE" ] || [ ! -f "$TX_FILE" ]; then
  echo " No Device"
  exit 1
fi

# Data in 1st second - 2nd Second.
RX1=$(cat $RX_FILE)
TX1=$(cat $TX_FILE)
sleep 1
RX2=$(cat $RX_FILE)
TX2=$(cat $TX_FILE)

RX_RATE=$(( (RX2 - RX1) / 1024 ))
TX_RATE=$(( (TX2 - TX1) / 1024 ))

echo " ${RX_RATE}KB/s  ${TX_RATE}KB/s"
