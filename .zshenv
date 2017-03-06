#!/bin/zsh

# PATH
paths=(\
    /Developer-3.2.6/usr/bin \
    /usr/local/bin \
    /usr/local/sbin \
    $HOME/opt \
    $HOME/bin \
    $HOME/.phpenv \
    $HOME/.rbenv/shims \
    $HOME/.composer/vendor/bin \
)

if [ -f $HOME/.zshenv-local ]; then
    source $HOME/.zshenv-local
fi

add_path()
{
    if [ -d $1 ]; then
        export PATH=$1:$PATH
    fi
}

for dir in ${paths[@]}
do
    add_path $dir
done

typeset -U PATH

# fpath
fpath=(
    /usr/local/share/zsh-completions \
    $HOME/.zsh-completions \
    $fpath \
)

# Golang
export GOPATH=$HOME/.golang

