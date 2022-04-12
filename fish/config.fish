set -x PATH ~/.emacs.d/bin $PATH
set -x PATH ~/.node_modules/bin $PATH
set -x PATH ~/.local/bin $PATH
set -x PATH ~/go/bin $PATH
set -x PATH ~/.cargo/bin $PATH
export GDK_SCALE=1
export GDK_DPI_SCALE=1
starship init fish | source
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

alias c clear
alias e exit
alias setproxy="export ALL_PROXY=socks5://127.0.0.1:1080"
alias unsetproxy="set -e ALL_PROXY"
alias vim lvim
alias ssh "kitty +kitten ssh" 
alias hx helix

function fish_greeting 
end

load_nvm



set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/ofdove/.ghcup/bin # ghcup-env
