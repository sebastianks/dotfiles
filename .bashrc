export OSH=/home/sebastian/.oh-my-bash
export XDG_CONFIG_HOME="$HOME/.config"

OSH_THEME="kitsune"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

completions=(
  git
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
export EDITOR='nano'
export PATH="$HOME/.node_modules/bin:$PATH"
export TERM='screen-256color'

# cycle through completions
bind TAB:menu-complete

