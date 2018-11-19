#!/bin/bash

compiler="go1.4"
stable="go1.11.2"

if [ "/bin/bash" -e $SHELL ]
then
    bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
else
    zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
fi

source ~/.gvm/scripts/gvm 
gvm install $compiler
gvm use $compiler
gvm install $stable
gvm use $stable --default

echo 'export PATH="$PATH:$GOPATH/bin"' >> ~/.profile

echo 'alias gopath="cd $GOPATH/src && clear"' >> ~/.profile

source ~/.profile

echo ''
echo 'Please restart your terminal session or to get started right away run'
echo '`source ~/.gvm/scripts/gvm`'