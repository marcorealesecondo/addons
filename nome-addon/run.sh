#!/bin/bash

TARGET="/media/usb"

mkdir -p $TARGET

echo "Mounting /dev/sda1 to $TARGET"
mount /dev/sda1 $TARGET

if [ $? -eq 0 ]; then
  echo "USB mounted successfully."
else
  echo "Failed to mount USB."
fi

# Keep container running so addon stays active
tail -f /dev/null

