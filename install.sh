#!/usr/bin/env zsh

set -eu

BASEDIR=$(dirname $0)
cd $BASEDIR

for f in .??*; do
    if [ "$f" = ".git" ] && continue
    ln -snfv ${PWD}/"$f" ~/
done
