# aliases

## home
alias home='cd ~'

## list
alias ls='ls --color=auto'
alias ll='ls -la'

## edit configs
alias vrc='vim ~/.vimrc'
alias brc='vim ~/.bashrc'
alias krc='vim ~/.config/kitty/kitty.conf'
alias irc='vim ~/.config/i3/config'
alias trc='vim ~/.tmux.config'

## git
alias gch='git checkout'
alias gchb='git checkout -b'
alias gs='git status'
alias gl='git pull'
alias gp='git push'
alias gpu='git push -u origin '
alias gc='git commit'
alias ga='git add'
alias gll='git log'
alias gd='git diff'

## npm
alias nrd='npm run dev'
alias nrb='npm run build'
alias ni='npm install'
alias nci='npm ci'
alias nrt='npm run test'
alias nrl='npm run lint'

export TERM=xterm-256color

export FZF_DEFAULT_COMMAND='fd --type f'

# projects
alias pwidget='cd ~/dev/core-widget';

# start project builds
alias widget-build-watch='cd ~/dev/core-widget/;npm run build:watch'
alias widget-build-example-dev='cd ~/dev/core-widget/example/;npm run dev'

PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# Use vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

export PS1="\[\e[35m\]\u\[\e[m\] \[\e[33m\]\w\[\e[m\] \[\e[34m\]\`parse_git_branch\`\[\e[m\] "

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source <(kitty + complete setup bash)

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
