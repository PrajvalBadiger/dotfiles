# Setup fzf
# ---------
if [[ ! "$PATH" == */home/prajval/.local/src/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/prajval/.local/src/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/prajval/.local/src/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/prajval/.local/src/fzf/shell/key-bindings.zsh"
