#! /bin/sh

set -e

sudo dnf install -y \
  byobu \
  fcitx-kkc \
  fcitx-configtool \
  gdouros-symbola-fonts.noarch \
  gitk \
  git-gui \
  google-droid-sans-mono-fonts \
  ipa-gothic-fonts \
  meld \
  openbox \
  spacefm \
  tilda \
  tint2 \
  xorg-x11-xinit \
  xorg-x11-drv-evdev \
  xorg-x11-server-Xorg \
  urw-fonts

cp ~/linux_files/conf/.xinitrc ~

mkdir -p ~/.config
cp ~/linux_files/conf/mimeapps.list ~/.config/

mkdir -p ~/.config/tilda
cp ~/linux_files/conf/tilda ~/.config/tilda/config_0

mkdir -p ~/.config/fcitx
cp ~/linux_files/conf/fcitx/* ~/.config/fcitx/
