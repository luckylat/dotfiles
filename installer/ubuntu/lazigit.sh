#!/bin/zsh

set -e

if type "lazygit" > /dev/null 2>&1; then
    echo Already Installed!
    lazygit --version
    return
fi

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"v*([^"]+)".*/\1/')

curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"

sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit


lazygit --version
rm lazygit.tar.gz
