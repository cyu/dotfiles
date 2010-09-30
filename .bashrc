# General Aliases
alias ls='ls -G'
alias ll='ls -la'

# SHOW GIT INFO IN PROMPT
source /usr/local/etc/bash_completion.d/git-completion.bash
export PS1='\W\[\033[32m\]$(__git_ps1) \[\033[0m\]$ '

if [[ -a ~/.bashrc-private ]]; then
    . ~/.bashrc-private
fi
