#!/bin/zsh

SSH_DIR=$HOME/.ssh

if [ ! -x `which keychain` ]; then
  echo 'not executable'
  return
fi

for key in `ls $SSH_DIR | grep -v .pub$`
do
    keychain $SSH_DIR/$key
done

if [ ! -f ~/.keychain/$HOST-sh ]; then
  echo 'not file'
  return
fi

source ~/.keychain/$HOST-sh

