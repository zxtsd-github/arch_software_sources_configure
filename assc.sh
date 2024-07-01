#!/bin/bash
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
sudo cp ./mirrorlist /etc/pacman.d
sudo pacman -Syyu
sudo pacman -S archlinux-keyring

sudo cat ./archlinuxcn >> /etc/pacman.conf
sudo pacman-key --lsign-key "farseerfc@archlinux.org"
sudo pacman -Syu archlinuxcn-keyring

sudo pacman -Syu yay
