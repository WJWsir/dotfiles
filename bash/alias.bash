#!/usr/bin/env bash

# Use colors in coreutils utilities output
alias ls='ls --color=auto'
alias grep='grep --color'

# some more ls aliases
alias ll="ls -alh"
alias la='ls -A'
alias l='ls -CF'

# 1. Save a lot of typing for common commands
alias v='vim'

# 2. save you from mistyping
alias sl='ls'
alias dc='cd'

# 3. Overwrite existing commands for better defaults
alias mv="mv -i"        # -i prompts before overwrite

#alias mkdir="mkdir -p"  # -p make parent dirs as needed
#alias df="df -h"        # -h prints human readable format
# 4. To ignore an alias run it prepended with \
#\ls
# Or disable an alias altogether with unalias
#unalias la
# 5. To get an alias definition just call it with alias
#alias ll
# Will print ll='ls -lh'
