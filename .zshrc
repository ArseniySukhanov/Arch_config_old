

# load zgen
source "${HOME}/.zgen/zgen.zsh"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
 source ~/.p10k.zsh

#tmux plugin settings
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOSTART_ONCE=true
ZSH_TMUX_UNICODE=true
ZSH_TMUX_AUTOCONNECT=false

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/tmux
    zgen oh-my-zsh plugins/tmuxinator
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-syntax-highlighting

    # completions
    zgen load zsh-users/zsh-completions src
    zgen load romkatv/powerlevel10k powerlevel10k

    # theme

    # save all to init script
    zgen save
fi

