
# For onefetch to print on CD to repo
LAST_REPO=""
cd() { 
    builtin cd "$@";
    git rev-parse 2>/dev/null;

    if [ $? -eq 0 ]; then
        if [ "$LAST_REPO" != $(basename $(git rev-parse --show-toplevel)) ]; then
        git pull
        LAST_REPO=$(basename $(git rev-parse --show-toplevel))
        fi
    fi
}

neofetch
alias config='/usr/bin/git --git-dir=/Users/aaronjack/.dotfiles/ --work-tree=/Users/aaronjack '
alias gac='git add . && git commit'
alias gs='git status'
alias gp='git push'
alias vim=nvim
alias rainbowstream='source $HOME/venv/bin/activate && rainbowstream'

hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x70000002A}]}'

