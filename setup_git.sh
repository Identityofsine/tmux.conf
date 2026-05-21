#!/bin/bash

IS_GITHUB=$(git remote get-url origin | grep "github.com" | wc -l)
IS_PRIVATE=$(git remote get-url origin | grep "fofx.zip" | wc -l)
readonly GITHUB_URL="https://github.com/identityofsine/tmux.conf"
readonly PRIVATE_URL="https://git.fofx.zip/root/tmux-files.git"

if [ $IS_GITHUB -eq 1 ]; then
  echo "You cloned from Githib, so we will add the private repository as a remote."
  git remote add private https://git.fofx.zip/root/tmux-files.git
fi

if [ $IS_PRIVATE -eq 1 ]; then
  echo "You cloned from the private repository, so we will add the GitHub repository as a remote."
  git remote add github https://github.com/identityofsine/tmux.conf
fi

git remote set-url --push origin "${GITHUB_URL}"
git remote set-url --push origin "${PRIVATE_URL}"

