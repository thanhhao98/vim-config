# Setup fzf
# ---------
if [[ ! "$PATH" == */home/thanhhao/.packages/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/thanhhao/.packages/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/thanhhao/.packages/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/thanhhao/.packages/fzf/shell/key-bindings.zsh"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border "
alias fp="fzf --preview '([[ -f {} ]] && (batcat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'"
function Cd() {
    local session
    if [ -d "$1" ]
    then
        session=$(fd . "$1" --type d | fzf)
    else
        session=$(fd . --type d | fzf)
    fi
    cd "$session"
}
function V() {
    if [[ "$1" == "" ]]
    then
        local session
        session=$(fd . --type f | fp)
        if [[ "$session" != "" ]]
        then
            nvim "$session"
        fi
    else
        nvim "$1"
    fi
}
