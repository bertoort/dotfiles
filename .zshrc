# ZSH Configuration

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE="true"
export UPDATE_ZSH_DAYS=13
COMPLETION_WAITING_DOTS="true"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

# User Configuration
source $ZSH/oh-my-zsh.sh

# Pretty ls
LSCOLORS=dxfxcxdxbxegedabagacad

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

# pokemonsay
# to install: git clone http://github.com/possatti/pokemonsay && run ./install.sh
# move $HOME/bin to /usr/local/bin and clean up
# brew install coreutils
# ln -s /usr/local/bin/gshuf /usr/local/bin/shuf
fortune | pokemonthink -n

# private
source ~/.profile
