# git aliases
alias gb='git branch'
alias gco='git checkout'
alias gs='git status'
alias gd='git diff'
alias gl='git log --all --graph --decorate'

alias ..='cd ..'
alias ls='lsd'
alias cl='clear'
alias v='vim'
alias vi='vim'

# cd 
alias cdwm='cd $HOME/.local/src/dwm/'
alias csrc='cd $HOME/.local/src/'
alias clb='cd $HOME/.local/bin/'

# dwm
alias fullclean='git checkout master && make clean && rm -f config.h && git reset --hard origin/master'
alias mkins='make && sudo make clean install'
