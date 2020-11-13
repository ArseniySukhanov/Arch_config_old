

# load zgen
source "${HOME}/.zgen/zgen.zsh"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.p10k.zsh

if [ "$TMUX" = "" ]; then tmux new ; fi

bindkey -v

#tmux plugin settings
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOSTART_ONCE=false
ZSH_TMUX_FIXTERM=true
ZSH_TMUX_UNICODE=true

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

#[[ -n "${key[Home]}"     ]]  && bindkey  "${key[Home]}"     beginning-of-line
#[[ -n "${key[End]}"      ]]  && bindkey  "${key[End]}"      end-of-line
#[[ -n "${key[Insert]}"   ]]  && bindkey  "${key[Insert]}"   overwrite-mode
#[[ -n "${key[Delete]}"   ]]  && bindkey  "${key[Delete]}"   delete-char
#[[ -n "${key[Up]}"       ]]  && bindkey  "${key[Up]}"       up-line-or-history
#[[ -n "${key[Down]}"     ]]  && bindkey  "${key[Down]}"     down-line-or-history
#[[ -n "${key[Left]}"     ]]  && bindkey  "${key[Left]}"     backward-char
#[[ -n "${key[Right]}"    ]]  && bindkey  "${key[Right]}"    forward-char
#[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"   beginning-of-buffer-or-history
#[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}" end-of-buffer-or-history

