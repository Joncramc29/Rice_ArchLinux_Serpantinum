#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Added by Unsloth installer
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export PATH=$PATH:/home/joncramc29/.spicetify

# opencode
# export PATH=/home/joncramc29/.opencode/bin:$PATH

# ─── fastfetch al abrir terminal interactiva (una vez por sesión) ───
if [[ $- == *i* ]] && [[ -z $TMUX ]] && [[ -z $SSH_CONNECTION ]] && [[ -z $FASTFETCH_SHOWN ]]; then
  export FASTFETCH_SHOWN=1
  fastfetch --structure title:os:kernel:uptime:cpu:cpu_temp:gpu:gpu_temp:memory:disk:diskio:battery:shell:terminal:localip:network:packages:audio:vulkan:mesa:colors
fi

# ─── starship prompt ───
eval "$(starship init bash)"

# ─── eza (ls moderno) ───
alias ls='eza --icons --group-directories-first'
alias ll='eza -l --icons --git --group-directories-first'
alias la='eza -la --icons --git --group-directories-first'
alias lt='eza --tree --icons --level=2'

# ─── bat (cat con syntax highlight) ───
alias cat='bat --paging=never'

# ─── zoxide (cd inteligente) ───
eval "$(zoxide init bash)"

# ─── fzf (fuzzy finder) ───
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

# ─── atuin (historial sincronizado, encriptado) ───
eval "$(atuin init bash)"

# ─── wallust alias ───
alias wal='~/.cargo/bin/wallust run'

# ─── lazygit / btop ───
alias lg='lazygit'
alias bt='btop'
