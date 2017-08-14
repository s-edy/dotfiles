#!/bin/zsh

export LANGUAGE=ja
export LANG=en_US.UTF-8
#export LC_ALL=en_US.UTF-8

# I'm vimmer!
export EDITOR=vim
export SVN_EDITOR=vim
bindkey -v

umask 002

export WORDCHARS='*?-[]~\!#%^(){}<>|`@#%^*()+:?'

# history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.zhistory

# see zsh/README
setopt ALWAYS_TO_END
setopt AUTO_CD
setopt AUTO_LIST
setopt AUTO_PUSHD
setopt AUTO_RESUME
setopt NO_BEEP
setopt BANG_HIST
setopt NO_CLOBBER
setopt COMPLETE_IN_WORD
setopt CORRECT
setopt CORRECT_ALL
setopt EQUALS
setopt EXTENDED_GLOB
setopt EXTENDED_HISTORY
setopt NO_FLOW_CONTROL
setopt FUNCTION_ARGZERO
setopt GLOB_DOTS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt NO_HUP
setopt IGNORE_EOF
setopt INTERACTIVE_COMMENTS
setopt NO_LIST_BEEP
setopt LIST_PACKED
setopt LIST_TYPES
setopt LONG_LIST_JOBS
setopt MAGIC_EQUAL_SUBST
setopt NOTIFY
setopt NUMERIC_GLOB_SORT
setopt PRINT_EIGHT_BIT
setopt PROMPT_SUBST
setopt PUSHD_IGNORE_DUPS
setopt SHARE_HISTORY
setopt ZLE
unsetopt BG_NICE

# completion color
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# PROMPT
# see zsh/README
PROMPT='%{[32m%}%B%U%n@%m%#%{[m%}%u%b '
RPROMPT='%{[32m%}%B[%d]%{[m%}%b'
SPROMPT='%{[33m%} %BCurrenct> '\''%r'\'' [Yes, No, Abort, Edit]%{[m%}%b '

# aliases
if ls --color --color > /dev/null 2>&1; then
  alias ls='ls --color=auto -F'
elif ls -G -G > /dev/null 2>&1; then
  alias ls='ls -G'
else
  alias ls='ls -F'
fi
alias la='ls -AFlh'
alias ll='ls -Flh'
alias l=ls
alias v=vim
alias scr='screen -U'
alias sx='screen -x'
alias x=exit
alias df='df -hH'
alias du='du -h'
#alias grep='grep --color=auto'
alias less="less -SRn -P '%f line:%l/%L %P\% (%Bbyte)'"
alias diff='colordiff -u'
#alias git=hub
alias updatedb='sudo /usr/libexec/locate.updatedb'
export LESS='-R'
export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'

# autoload
#bindkey '^R' history-incremental-search-backward

export TERM=xterm-256color

eval "$(rbenv init -)"

# percol
function exists { which $1 &> /dev/null }
if exists percol; then
    function percol_select_history() {
        local tac
        exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
        BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
        CURSOR=$#BUFFER         # move cursor
        zle -R -c               # refresh
    }

    zle -N percol_select_history
    bindkey '^R' percol_select_history
fi

autoload -U compinit
compinit -u

# PHPBrew
source $HOME/.phpbrew/bashrc

# Notification if long execution time
#source $HOME/var/dotfiles/zsh/zsh-notify/notify.plugin.zsh
#export SYS_NOTIFIER=/usr/local/bin/terminal-notifier
#export NOTIFY_COMMAND_COMPLETE_TIMEOUT=30

# direnv
eval "$(direnv hook zsh)"

if [ -f $HOME/.zshrc-local ]; then
    source $HOME/.zshrc-local
fi

# powerline
powerline-daemon -q
source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

