#!/run/current-system/sw/bin/bash

# creates create symlinks for my dotfiles

SRC_DIR=$(pwd)/.dotfiles
DEST_DIR=~/.config

MY_DOTFILES=(i3 alacritty tmux nvim rofi p10k)

# create the symlinks
# $1 -> src :: $2 -> dest
create_symlink() {
  # check if dest symlink exists
  if [ -L $2 ]; then
    echo "Symlink $2 already exitst. Symlink was not created"
  else
    ln -s $1 $2
  fi
}

for dotfile in ${MY_DOTFILES[@]}; do
  if [ $dotfile = "p10k" ]; then
    # the destination with be different
    create_symlink $SRC_DIR/p10k/.p10k.zsh $HOME/.p10k.zsh
  else
    create_symlink $SRC_DIR/$dotfile $DEST_DIR/$dotfile
  fi
done
