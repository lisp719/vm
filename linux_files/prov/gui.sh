#! /bin/sh

sudo apt-get install -y \
  fcitx-mozc \
  ttf-mona

sudo apt-get install -y \
  lxde

mkdir -p ~/.config/lxsession/LXDE
cp ~/linux_files/autostart ~/.config/lxsession/LXDE/

mkdir ~/.config/fcitx
cp ~/linux_files/fcitx.profile ~/.config/fcitx/profile

sudo sed -i.bak -e "/autologin=/a autologin=vagrant" /etc/lxdm/lxdm.conf
