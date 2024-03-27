#!/usr/bin/env bash
PS1='[USER-\[\033[01;32m\]\u\[\033[00m\]@HOST-\[\033[01;32m\]\h\[\033[00m\]][Date: \033[01;36m\]\d\[\033[00m\]][Time: \[\033[01;36m\]\A\[\033[00m\]]\n\r \033[38;5;227m\]\033[48;5;236m\]\w\[\033[00m\] \$ '

# bash-prompt-git
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source "$HOME/.bash-git-prompt/gitprompt.sh"
fi
