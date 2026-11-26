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

git_info() {
    local branch=$(git branch --show-current 2>/dev/null)
    local status=$(git status -s 2>/dev/null | awk '{print $1}' | xargs)
    if [[ -n "$branch" ]]; then
        if [[ -n "$status" ]]; then
            echo -e "\001\e[0m\002(\001\e[31m\002\001\e[01m\002$branch\001\e[0m\002 \001\e[1m\002\001\e[33m\002✗\001\e[0m\002) "
            return
        fi
        echo -e "\001\e[0m\002(\001\e[31m\002\001\e[01m\002$branch\001\e[0m\002) "
    fi
}

prompt_leader() {
    echo -e "\001\e[0m\002$ "
}

PS1='\[\e[32m\] \h\[\e[0m\]: \[\e[1m\]\[\e[36m\]\W $(git_info)\[\e[0m\]$(prompt_leader)'

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
