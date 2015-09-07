#!/bin/sh

# defailt options
INTERACTIVE=1
FORCE=0
VERBOSE=0

makeLink()
{
  local src=$DOTDIR/$1
  local dest=$HOME/$1
  local removeMode='';
  local output='';

  if [ $FORCE -eq 1 ]; then
    removeMode='-f'
  elif [ $INTERACTIVE -eq 1 ]; then
    removeMode='-i'
  fi

  if [ $VERBOSE -eq 1 ]; then
    local output='-v'
  fi

  if [ -d $dest ]; then
    rm -r $removeMode $output $dest
  fi

  ln -s $removeMode $output $src $dest
}

while getopts "ifv" flag
do
  case $flag in
    "i") INTERACTIVE=1 ;;
    "f") FORCE=1 ;;
    "v") VERBOSE=1 ;;
  esac
done

# set dotdir path
cd `dirname $0`
DOTDIR=$PWD

for DOTFILE in `ls -a $DOTDIR | grep '^\.'`
do
  if [ $DOTFILE == '.' -o $DOTFILE == '..' ]; then
    continue
  elif [ $DOTFILE == '.git' ]; then
    continue
  fi
  makeLink $DOTFILE
done

