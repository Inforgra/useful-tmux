#!/usr/bin/env bash

BASEPATH=$(dirname -- $(readlink -f -- $0))

[ -f ~/.tmux.conf ] && echo "~/.tmux.conf exists!" && exit 1
[ -d ~/.tmux ] && echo "~/.tmux exists!" && exit 1

cd ${BASEPATH}

[ ! -d ./plugin ] && mkdir -p ./plugins
pushd plugins
git clone git@github.com:tmux-plugins/tpm.git
git clone git@github.com:tmux-plugins/tmux-sensible.git
git clone https://github.com/catppuccin/tmux.git
popd

ln -s ${BASEPATH} ~/.tmux
ln -s ${BASEPATH}/tmux.conf ~/.tmux.conf

