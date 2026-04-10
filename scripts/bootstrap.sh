#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
config_home="${XDG_CONFIG_HOME:-$HOME/.config}"

link_path() {
  local source_path="$1"
  local target_path="$2"

  mkdir -p "$(dirname "$target_path")"
  ln -sfn "$source_path" "$target_path"
  printf 'linked %s -> %s\n' "$target_path" "$source_path"
}

link_path "$repo_root/alacritty" "$config_home/alacritty"
link_path "$repo_root/fish" "$config_home/fish"
link_path "$repo_root/nvim" "$config_home/nvim"
link_path "$repo_root/sketchybar" "$config_home/sketchybar"
link_path "$repo_root/skhd" "$config_home/skhd"
link_path "$repo_root/yabai" "$config_home/yabai"
link_path "$repo_root/tmux/.tmux.conf" "$HOME/.tmux.conf"
