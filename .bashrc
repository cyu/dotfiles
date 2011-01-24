function load_modules() {
    if [[ -d "$1" ]]; then
        for module in $(ls $1); do
            . $1/$module
        done
    else
        echo "Unable to load modules in $1 (directory does not exist)"
    fi
}

# General Aliases
alias ls='ls -G'
alias ll='ls -la'

load_modules $HOME/.dotfiles/modules

if [[ -a ~/.bashrc-private ]]; then
    . ~/.bashrc-private
fi

if [[ -d ~/bin ]]; then
    PATH=$HOME/bin:$PATH
fi
