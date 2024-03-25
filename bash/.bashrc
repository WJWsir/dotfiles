#!/usr/bin/env bash

# Get file parent dir path
get_script_dir() {
    # get real path of one script file regardless of soft link file or regular file
    real_script_path=$(readlink -f "$1")

    # get dir path of script
    script_dir=$(dirname "$real_script_path")

    echo $script_dir
}
# after create a soft link file ~/.bashrc to dotfiles/bash/.bashrc
dotfile_bash_dir=$(get_script_dir "$HOME/.bashrc")
#echo $script_dir

# after create a soft link file ~/dotfile.ln to dotfiles
dotfile_dir=$(get_script_dir "$HOME/dotfiles")

# alias
source "$dotfile_bash_dir/alias.bash"

# Bash prompt
source "$dotfile_bash_dir/prompt.bash"
