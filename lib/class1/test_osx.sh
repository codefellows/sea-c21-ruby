#!/bin/sh

echo '=> Homebrew'
brew -v
brew doctor

echo
echo '=> Shell'
echo $SHELL
echo $PATH

echo
echo '=> Sublime Text'
subl -v
cat ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings

echo
echo '=> Ruby'
ruby -v
cat ~/.irbrc

echo
echo '=> Git'
git --version
git config -l | sort
