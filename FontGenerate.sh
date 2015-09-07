#!/usr/bin/env bash

brew install fontforge --use-gcc --without-python && \
brew tap sanemat/font && \
brew install ricty && \
cp /usr/local/Cellar/ricty/3.2.3/share/fonts/Ricty*.ttf ~/Library/Fonts && \
mkdir -p ~/var && \
cd ~/var && \
git clone https://github.com/Lokaltog/vim-powerline.git && \
fontforge -lang=py -script ~/var/vim-powerline/fontpatcher/fontpatcher ~/Library/Fonts/Ricty-Regular.ttf && \
mv Ricty-Regular-Powerline.ttf ~/Library/Fonts && \
fc-cache -vf
