#!/usr/bin/env zsh

set -eu

BASEDIR=$(dirname $0)
cd $BASEDIR

IFS=$'\n'

for f in `find . -type d -o -type f -print`; do
    [[ $f =~ "\.md" ]] && continue
    [[ $f =~ "installer/" ]] && continue
    [[ $f =~ "install.sh" ]] && continue
    [[ $f =~ "\.swp" ]] && continue
    [[ $f =~ "\.git" ]] && continue
    # if folder does not exist, make folder
    mkdir -p ~/"$(dirname $f)"
    ln -snfv ${PWD}/"$f" ~/"$f"
done
