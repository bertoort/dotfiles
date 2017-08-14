# ZSH Configuration

export DATABASE_URL=postgres://localhost/dbname
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE="true"
DEFAULT_USER=""
export UPDATE_ZSH_DAYS=13
COMPLETION_WAITING_DOTS="true"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

# User Configuration
source $ZSH/oh-my-zsh.sh

# Pretty ls
LSCOLORS=dxfxcxdxbxegedabagacad

# redefine prompt_context for hiding user@hostname
prompt_context () { }

# go
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=$PATH:$HOME/.rvm/gems/ruby-2.4.0/bin 
rvm user gemsets

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# aliases 
source ~/.aliases

# udraw random cow
export COWPATH="/Users/berto/.udraw/favorites"
bash ~/.udraw/random.sh

# private
source ~/.profile

# Haskell executables
PATH=$PATH:$HOME/Library/Haskell/bin
