#!/bin/bash

IS_GITHUB=$(git remote get-url origin | grep "github.com" | wc -l)
IS_PRIVATE=$(git remote get-url origin | grep "fofx.zip" | wc -l)

if [ $IS_GITHUB -eq 1 ]; then
  echo "You cloned from Githib, so we will add the private repository as a remote."
  git remote add private https://git.fofx.zip/root/tmux-files.git
fi

if [ $IS_PRIVATE -eq 1 ]; then
  echo "You cloned from the private repository, so we will add the GitHub repository as a remote."
  git remote add github https://github.com/identityofsine/tmux.conf
fi

