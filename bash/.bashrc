#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias cls='colorls'
alias ls='ls --color=auto'
alias e='nvim'
alias init-vksdk='source ~/scripts/init-vksdk.sh'
alias ll='ls -hAl'
alias grep='grep --color=auto'
alias fetch='fastfetch'
alias cl='clear'
alias cpp='~/scripts/./cpp.bash'
alias bin='~/scripts/./bin.bash'
alias gdc='git add . && git commit -m "." && git push'
alias pd='~/scripts/./pd.bash'
alias scd='cd $(fzf --walker=dir,hidden,follow --walker-root=/home/asrwx)'

PS1='\[\e[33m\]\u@\h: \[\e[34m\]\W \[\e[0m\]$ '
# PS1='󰣇 \[\e[34m\]\w \[\e[0m\]$ '
#➜  ➜
export PATH="$PATH:~/.cargo/bin"
export PATH="$HOME/.local/bin:$PATH"
export EDITOR=nvim
export BAT_PAGER="less -R --incsearch"
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export PATH="$HOME/.config/emacs/bin:$PATH"
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH:$HOME/.local/share/gem/ruby/3.4.0/bin/:$PATH
export MANPAGER="nvim +Man!"
# export VIMRUNTIME=~/workspace/neovim/runtime

# if [[ $- == *i* ]]; then
#   fastfetch
# fi

source /usr/share/nvm/init-nvm.sh
# source ~/.bash/themes/aphrodite/aphrodite.theme.sh
# eval "$(starship init bash)"
# eval "$(oh-my-posh init bash --config emodipt-extend)"
# eval "$(oh-my-posh init bash --config kali)"
# eval "$(oh-my-posh init bash --config robbyrussell)"
