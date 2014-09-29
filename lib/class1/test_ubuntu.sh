#!/bin/sh

echo '=> Shell'
echo $SHELL
echo $PATH

echo
echo '=> Sublime Text'
subl -v
cat ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

echo
echo '=> Ruby'
ruby -v
cat ~/.irbrc

echo
echo '=> Git'
git --version
git config -l | sort
