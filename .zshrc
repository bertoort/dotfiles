# ZSH Configuration

export ZSH=/Users/bertoort/.oh-my-zsh
ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=13
COMPLETION_WAITING_DOTS="true"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

# User Configuration
source $ZSH/oh-my-zsh.sh

# go
export GOPATH=$HOME/workspace/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
rvm user gemsets

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# aliases 
source ~/.aliases

# private
source ~/.profile

