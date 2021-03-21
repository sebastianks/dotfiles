export OSH=/home/sebastian/.oh-my-bash

OSH_THEME="font"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
)

source $OSH/oh-my-bash.sh

source $HOME/bashrc.d/alias.sh
source $HOME/bashrc.d/plugins.sh

export LANG=en_US.UTF-8
export EDITOR='nvim'
export PATH="$HOME/.node_modules/bin:$PATH"

# cycle through completions
bind TAB:menu-complete

