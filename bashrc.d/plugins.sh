# fasd
eval "$(fasd --init auto)"

alias v='f -e nvim'

_fasd_bash_hook_cmd_complete v

# fzf
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

source /usr/share/doc/fzf/examples/key-bindings.bash

