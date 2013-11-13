# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh 
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias tmux="TERM=screen-256color-bce tmux"
alias spec="ruby -I spec"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git knife)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

PATH=$HOME/bin:$PATH

# Need my vi edit mode
set -o vi

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Load local configuration
if [ -f $HOME/.zshrc-private ]; then
  source $HOME/.zshrc-private
fi

# Set editors
export BUNDLER_EDITOR=vi
export GEM_OPEN_EDITOR=vi

[ -n "$TMUX" ] && export TERM=screen-256color

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/bin:/usr/local/heroku/bin:$PATH"

### Powerline
#PATH=$PATH:$HOME/.vim/bundle/powerline/scripts
#. $HOME/.vim/bundle/powerline/powerline/bindings/zsh/powerline.zsh


