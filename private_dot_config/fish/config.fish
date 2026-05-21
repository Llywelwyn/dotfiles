set -x EDITOR nvim
set -x PATH $HOME/.local/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH

if test -f "$HOME/.config/fish/.env.fish"
    source "$HOME/.config/fish/.env.fish"
end

if status is-interactive
    if test -z "$TMUX"
        if type -q tmux
            tmux attach-session -t default 2>/dev/null; or tmux new-session -s default
        end
    end
end

if type -q starship
    starship init fish | source
end

if type -q zoxide
    zoxide init fish | source
end

set -x BAT_THEME ansi

if test -f "$HOME/.config/fish/user-dirs.fish"
    source "$HOME/.config/fish/user-dirs.fish"
end

if test -d "$HOME/.config/fish/"
    alias fishconf="cd $HOME/.config/fish"
end

alias docs="cd ~/documents"
alias dl="cd ~/downloads"
alias dt="cd ~/desktop"
alias music="cd ~/music"
alias pics="cd ~/pictures"
alias vids="cd ~/videos"

abbr -a -- .. 'cd ..'
abbr -a -- ... 'cd ../..'
abbr -a -- .... 'cd ../../..'
abbr -a -- ..... 'cd ../../../..'

function last_history_item
    echo $history[1]
end
abbr -a !! --position anywhere --function last_history_item
