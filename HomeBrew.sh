#!/bin/zsh

fomulas=( \
    ack \
    ansible \
    autoconf \
    automake \
    boot2docker \
    colordiff \
    curl \
    direnv \
    docker \
    git \
    gnu-sed \
    go \
    graphviz \
    hub \
    makedepend \
    nodebrew \
    openssl \
    pstree \
    python \
    rbenv \
    source-highlight \
    terminal-notifier \
    tig \
    tmux \
    tree \
    watch \
    wget \
    zsh \
    zsh-completions \
)

ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

brew cleanup
brew update

for f in ${fomulas[@]}
do
    brew install $f
done

brew upgrade
brew prune
brew doctor

