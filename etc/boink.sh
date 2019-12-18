#! /bin/bash

if [ -z "$1" ]; then
  echo "Give me a number"
else
  echo "Setting Mac 1"
  ssh ttc@epicnpoc-vm.local "osascript ~/Documents/setBoincCpuPercentage.scpt $1"
  echo "Setting Mac 2"
  ssh ttc@frmerwlt2703.local "osascript ~/Documents/setBoincCpuPercentage.scpt $1"
fi
