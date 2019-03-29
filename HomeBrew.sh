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
    keychain \
    phpbrew \
)

# ack			direnv			gmp			jpeg			libtool			nodebrew		pyenv			sqlite			xz
# ansible			fontconfig		gnu-sed			jq			libunistring		oniguruma		python			terminal-notifier	zsh
# autoconf		freetype		go			keychain		libxml2			openssl			rbenv			tig			zsh-completions
# automake		gd			graphviz		kustomize		libyaml			pcre			re2c			tmux
# boost			gdbm			htop			libevent		macvim			pcre2			readline		tree
# colordiff		gettext			hub			libidn2			makedepend		phpbrew			rsync			watch
# cscope			git			icu4c			libpng			mcrypt			pkg-config		ruby-build		webp
# curl			git-lfs			imagemagick		libtiff			mhash			pstree			source-highlight	wget


ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

brew cleanup
brew update

# phpbrew
brew tap homebrew/php

for f in ${fomulas[@]}
do
    brew install $f
done

# for superline
brew install macvim --env-std --with-override-system-vim

brew upgrade
brew prune
brew doctor

