# SHOW GIT INFO IN PROMPT
source /usr/local/etc/bash_completion.d/git-completion.bash
complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \
  || complete -o default -o nospace -F _git g
export PS1='\W\[\033[32m\]$(__git_ps1) \[\033[0m\]$ '

alias g='git'
