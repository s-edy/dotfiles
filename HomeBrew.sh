#!/bin/zsh

fomulas=( \
    ack \
    ansible \
    autoconf \
    automake \
    colordiff \
    curl \
    direnv \
    git \
    gnu-sed \
    go \
    graphviz \
    htop \
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

# for superline
brew install macvim --env-std --with-override-system-vim

brew upgrade
brew prune
brew doctor

