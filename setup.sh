#!/bin/bash

# clone dotfiles repo

git clone --separate-git-dir=$HOME/.dotfiles git@github.com:TheWalkingLeek/dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles

choices=$(whiptail --checklist "Select packages:" \
          15 40 5 vim vim on i3 i3 on openbox openbox on polybar polybar on rofi rofi on \
          spotifyd spotifyd on terminator terminator on zsh zsh on terminator terminator \
          pass pass on scrot scrot on 3>&1 1>&2 2>&3)
exitstatus=$?
clear

echo $exitstatus

if [[ $exitstatus = 1 || $exitstatus = 255 ]]; then
  exit 1
fi

SUDO=''
if (( $EUID != 0 )); then
  echo "You'll have to run this script as root"
  SUDO='sudo'
fi

packages=$(echo "$packages" | tr -d '"')
$SUDO apt install -y $packages

# i3 install

if [[ $choices == *"vim"* ]]; then
  $SUDO chmod +x $HOME/.config/i3/lock.sh
fi

# vim install

if [[ $choices == *"vim"* ]]; then
  vim -c "PlugInstall | q | q"
fi

# (oh-my-)zsh install


if [[ $choices == *"zsh"* ]]; then
  $SUDO chsh -s $(which zsh)

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# polybar install

if [[ $choices == *"polybar"* ]]; then
  cp $HOME/.config/polybar/fonts/siji.pcf $HOME/.local/share/fonts/
  cp $HOME/.config/polybar/fonts/termsyn/* $HOME/.local/share/fonts/
  mv .config/polybar/{colors,colors-i3}.ini
fi

if [[ $choices == *"pass"* && $choices == *"spotifyd"* ]]; then
  echo "Please setup your spotify password using your GPG key and this command: pass insert personal/spotify"
fi

exit 0
