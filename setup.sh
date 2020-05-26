#!/bin/bash

# clone dotfiles repo

# git clone --separate-git-dir=$HOME/.dotfiles git@github.com:TheWalkingLeek/dotfiles.git tmpdotfiles
# rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
# rm -r tmpdotfiles

choices=$(whiptail --checklist "Select packages:" 15 40 5 vim vim on i3 i3 on polybar polybar on rofi rofi on spotifyd spotifyd on terminator terminator on zsh zsh on pass scrot on 3>&1 1>&2 2>&3)
clear

SUDO=''
if (( $EUID != 0 )); then
  echo "You'll have to run this script as root"
  SUDO='sudo'
fi

packages=$(echo "$choices" | tr -d '"')
$SUDO apt install -y $packages

# i3 install

$SUDO chmod +x $HOME/.config/i3/lock.sh

# vim install

vim -c "PlugInstall | q | q"

# (oh-my-)zsh install

$SUDO chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install fonts

cp $HOME/.config/polybar/fonts/siji.pcf $HOME/.local/share/fonts/
cp $HOME/.config/polybar/fonts/termsyn/* $HOME/.local/share/fonts/

# polybar install

mv .config/polybar/{colors,colors-i3}.ini


