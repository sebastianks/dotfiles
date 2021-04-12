# fasd
eval "$(fasd --init auto)"

alias v='f -e nvim'

_fasd_bash_hook_cmd_complete v

# fzf
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

ARCH_BINDINGS=/usr/share/fzf/key-bindings.bash
if [ -f "$ARCH_BINDINGS" ]; then
    source /usr/share/fzf/key-bindings.bash
fi

UBUNTU_BINDINGS=/usr/share/doc/fzf/examples/key-bindings.bash
if [ -f "$UBUNTU_BINDINGS" ]; then
    source /usr/share/doc/fzf/examples/key-bindings.bash 
fi

