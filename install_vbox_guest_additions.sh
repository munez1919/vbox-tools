#!/bin/bash

set -e

echo "[*] Updating system and installing dependencies..."
sudo dnf install -y epel-release || true
sudo dnf update -y || sudo apt update -y
sudo dnf install -y gcc make perl elfutils-libelf-devel kernel-devel kernel-headers || \
sudo apt install -y build-essential dkms linux-headers-$(uname -r)

echo "[*] Mounting Guest Additions CD..."
sudo mkdir -p /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom || sudo mount /dev/sr0 /mnt/cdrom

echo "[*] Installing Guest Additions..."
sudo /mnt/cdrom/VBoxLinuxAdditions.run || {
    echo "[!] Installation failed, check logs in /var/log/vboxadd-setup.log"
    exit 1
}

echo "[*] Enabling shared clipboard and drag-and-drop services..."
VBoxClient --clipboard
VBoxClient --draganddrop
VBoxClient-all

echo "[*] Done. Please reboot the system to ensure all changes apply."

