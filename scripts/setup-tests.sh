#!/bin/sh

set -eu

repo_url="https://github.com/nvim-lua/plenary.nvim.git"
target_dir=".tests/plenary.nvim"

mkdir -p ".tests"

if [ -d "$target_dir/.git" ]; then
  git -C "$target_dir" pull --ff-only
else
  git clone --depth 1 "$repo_url" "$target_dir"
fi
