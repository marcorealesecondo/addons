#!/usr/bin/env sh

USB_DEVICE="/dev/sda1"
MOUNT_POINT="/media/usb"

mkdir -p $MOUNT_POINT

# Monta il dispositivo se non già montato
if ! mountpoint -q $MOUNT_POINT; then
  mount $USB_DEVICE $MOUNT_POINT
fi

# Mantieni il container attivo
tail -f /dev/null
