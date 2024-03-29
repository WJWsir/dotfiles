#!/usr/bin/env bash

# download dotfiles repo
if [ -d $HOME/.dotfiles ]; then
    echo ".dotfiles exist."
else
    git clone https://github.com/WJWsir/dotfiles.git $HOME/.dotfiles
    echo "successfully download dotfiles repo."
fi

# backup default config files
echo "source $HOME/.dotfiles/bash/.bashrc" >> $HOME/.bashrc #cp $HOME/.bashrc $HOME/.bashrc.bak
mv $HOME/.gitconfig $HOME/.gitconfig.bak
# backup default config directory
mv $HOME/.config/nvim $HOME/.config/nvim.bak
mv $HOME/.config/tmux $HOME/.config/tmux.bak
echo "successfully backup default config files."

# create soft link files
#ln -s $HOME/.dotfiles/bash/.bashrc $HOME/.bashrc
ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig
ln -s $HOME/.dotfiles/git/.gitignore_global $HOME/.gitignore_global
ln -s $HOME/.dotfiles/nvim $HOME/.config/nvim
ln -s $HOME/.dotfiles/tmux $HOME/.config/tmux
echo "successfully create soft link files."

# Miscellaneous
# for tmux
if [ -d $HOME/.tmux/plugins/tpm ] && [ -f $HOME/.tmux/plugins/tpm/tpm ]; then
    echo "tmp eixst."
else
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
    echo "successfully install tmux plugin manager."
    $HOME/.tmux/plugins/tpm/scripts/install_plugins.sh
    echo "successfully install tmux plugins."
fi
# for bash-git-prompt
if ! [ -d $HOME/.bash-git-prompt ]; then
    git clone https://github.com/magicmonty/bash-git-prompt.git $HOME/.bash-git-prompt --depth=1
    echo "successfuly download bash-git-prompt repo."
fi
